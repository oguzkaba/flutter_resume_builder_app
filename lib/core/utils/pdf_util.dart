import 'dart:developer';
import 'dart:io';

import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/resume/data/models/sections/educations_model.dart';
import 'package:fixresume/features/resume/data/models/sections/experiences_model.dart';
import 'package:fixresume/features/resume/data/models/sections/personal_info_model.dart';
import 'package:fixresume/features/resume/data/models/sections/social_accounts_model.dart';
import 'package:fixresume/features/resume/presentation/blocs/resumes/resumes_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/skills/skills_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PdfUtil {
  static String? pwProfileImageUrl(UserDetailsEntity user) {
    if (user.photoUrl == null &&
        user.currentUser.userMetadata?['avatar_url'] == null) {
      return user.currentUser.userMetadata?['avatar_url'] as String;
    }
    return null;
  }

  static Future<Map<String, dynamic>> openPdf(
    BuildContext context,
    String fileName,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$fileName');

    if (file.existsSync()) {
      return {
        'resumeName': fileName,
        'child': PdfPreview(
          build: (PdfPageFormat format) {
            return file.readAsBytesSync();
          },
          onShared: (context) {
            throw ServerException(
              message: 'Error while sharing pdf file.',
            );
          },
          canChangePageFormat: false,
          pdfFileName: fileName,
          onError: (context, error) {
            throw ServerException(
              message: 'Error while opening pdf file.( $error )',
            );
          },
          canChangeOrientation: false,
          canDebug: false,
          enableScrollToPage: true,
          actionBarTheme: PdfActionBarTheme(
            backgroundColor: ColorConstants.myBlack,
          ),
        ),
      };
    } else {
      throw FileNotFoundExeption(
        message: 'File not found.',
      );
    }
  }

  static Future<Uint8List> createPdf(
    String fileName,
    UserDetailsEntity user,
    // Future<void> Function(Image image) thumbImage,
  ) async {
    var educationsId = <int>[];

    /// Get Resumes
    getIt<ResumesBloc>().add(const ResumesEvent.getResumes());

    /// Get Supabase Personal Info
    getIt<ResumesBloc>().state.maybeWhen(
          orElse: () {},
          resumesSuccess: (resumes) {
            educationsId = resumes.first.educationsId ?? [];
            log('ResumesBloc state is success educations =>${educationsId.length}');
          },
        );
    final responsePI = await getIt<SupabaseClient>()
        .from('personal_info')
        .select()
        .eq('user_id', user.currentUser.id)
        .select();
    final personalInfo = personalInfoModelFromJson(responsePI).first;

    /// Get Supabase Social Media
    final responseSA = await getIt<SupabaseClient>()
        .from('social_accounts')
        .select()
        .eq('id', personalInfo.socialMedias ?? 0)
        .select();
    final socialAccounts = socialAccountsModelFromJson(responseSA).first;

    /// Get Supabase Education
    final responseED = await getIt<SupabaseClient>()
        .from('educations')
        .select()
        .eq('user_id', user.currentUser.id)
        .order('ending_at', ascending: false)
        .select();
    final education = educationsModelFromJson(responseED);

    /// Get Supabase Education
    final responseWE = await getIt<SupabaseClient>()
        .from('experiences')
        .select()
        .eq('user_id', user.currentUser.id)
        .order('ended_at', ascending: false)
        .select();
    final workExperiences = experiencesModelFromJson(responseWE);

    /// Watermark Image
    final watermarkImage = await rootBundle.load('app-icon-50'.toAppIcon);
    final watermarkImageData =
        pw.MemoryImage(watermarkImage.buffer.asUint8List());

    ///Image Asset or Network
    final image = await rootBundle.load('avatar'.toPNG);
    final imageData = pw.MemoryImage(image.buffer.asUint8List());

    late final pw.Image profileImage;

    if (user.photoUrl == null &&
        user.currentUser.userMetadata?['avatar_url'] == null) {
      profileImage = pw.Image(imageData);
    } else {
      profileImage = pw.Image(
        await networkImage(
          user.currentUser.userMetadata?['avatar_url']! as String,
        ),
      );
    }

    /// List Tile Header and Content Text
    pw.Padding listTileHeaderText(String text, {PdfColor? tColor}) {
      return pw.Padding(
        padding: const pw.EdgeInsets.only(bottom: 4),
        child: pw.Link(
          child: pw.Text(
            text,
            style: pw.TextStyle(
              color: tColor,
              fontSize: 10,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
          destination: text,
        ),
      );
    }

    /// List Tile Header and Content Text
    pw.Padding listTileContentText(String text, {PdfColor? tColor}) {
      return pw.Padding(
        padding: const pw.EdgeInsets.only(bottom: 4),
        child: pw.Text(
          text,
          style: pw.TextStyle(
            color: tColor ?? PdfColors.grey800,
            fontSize: 10,
          ),
        ),
      );
    }

    final pdf = pw.Document();
    final baseFont = await PdfGoogleFonts.montserratMedium();
    final boldFont = await PdfGoogleFonts.montserratSemiBold();

    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.all(16),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        theme: pw.ThemeData.withFont(
          base: baseFont,
          bold: boldFont,
        ),
        build: (pw.Context context) {
          return pw.Stack(
            children: [
              pw.Watermark(
                angle: 45,
                child: pw.Text(
                  'FixResume',
                  style: const pw.TextStyle(
                    fontSize: 48,
                    color: PdfColors.grey100,
                  ),
                ),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.all(16),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    /// Header
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          '${user.currentUser.userMetadata?['full_name']}',
                          style: pw.TextStyle(
                            fontSize: 18,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.ClipOval(
                          child: pw.Container(
                            width: 80,
                            height: 80,
                            child: profileImage,
                          ),
                        ),
                      ],
                    ),

                    /// Add personal information
                    pw.SizedBox(height: 8),
                    pw.Text(
                      'Personal Information',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(color: PdfColors.indigo, height: 2),
                    pw.SizedBox(height: 8),
                    pw.ListView(
                      children: [
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  listTileHeaderText('Title'),
                                  listTileHeaderText('Full Name'),
                                  listTileHeaderText('Date of Birth'),
                                ],
                              ),
                            ),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  listTileContentText(
                                    personalInfo.title ?? 'Title not found',
                                  ),
                                  listTileContentText(
                                    '${personalInfo.name} ${personalInfo.surname}',
                                  ),
                                  listTileContentText(
                                    '${personalInfo.birthDate?.day}.${personalInfo.birthDate?.month}.${personalInfo.birthDate?.year}',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    /// Add contact information
                    pw.SizedBox(height: 16),
                    pw.Text(
                      'Contact Information',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(color: PdfColors.indigo, height: 2),
                    pw.SizedBox(height: 8),
                    pw.ListView(
                      children: [
                        pw.Row(
                          children: [
                            pw.Expanded(
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  listTileHeaderText('Adress'),
                                  listTileHeaderText('Mobile'),
                                  listTileHeaderText('Email'),
                                  if (socialAccounts.linkedin != null)
                                    listTileHeaderText('Linkedin'),
                                  if (socialAccounts.github != null)
                                    listTileHeaderText('Github'),
                                  if (socialAccounts.kaggle != null)
                                    listTileHeaderText('Kaggle'),
                                  if (socialAccounts.behance != null)
                                    listTileHeaderText('Behance'),
                                  if (socialAccounts.website != null)
                                    listTileHeaderText('Website'),
                                ],
                              ),
                            ),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  listTileContentText(
                                    '${personalInfo.city} / ${personalInfo.country}',
                                  ),
                                  listTileContentText(
                                    '${personalInfo.phoneCountryCode} ${personalInfo.phone}',
                                  ),
                                  listTileContentText(
                                    personalInfo.email,
                                  ),
                                  if (socialAccounts.linkedin != null)
                                    listTileContentText(
                                      socialAccounts.linkedin!,
                                    ),
                                  if (socialAccounts.github != null)
                                    listTileContentText(
                                      socialAccounts.github!,
                                    ),
                                  if (socialAccounts.kaggle != null)
                                    listTileContentText(
                                      socialAccounts.kaggle!,
                                    ),
                                  if (socialAccounts.behance != null)
                                    listTileContentText(
                                      socialAccounts.behance!,
                                    ),
                                  if (socialAccounts.website != null)
                                    listTileContentText(
                                      socialAccounts.website!,
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    /// Add education information
                    pw.SizedBox(height: 16),
                    pw.Text(
                      'Educations',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(color: PdfColors.indigo, height: 2),
                    pw.SizedBox(height: 8),
                    pw.ListView(
                      children: [
                        pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Expanded(
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: education.map((e) {
                                  return pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      listTileHeaderText(
                                        '${e.startingAt.year} - ${e.stillStaying == null ? e.endingAt?.year : e.stillStaying! ? 'Continues' : e.endingAt?.year}',
                                      ),
                                      listTileContentText(
                                        '-',
                                        tColor: PdfColors.white,
                                      ),
                                      pw.SizedBox(height: 4),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: education.map((e) {
                                  return pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      listTileContentText(e.name),
                                      listTileContentText(
                                        '${e.level} - ( ${e.graduationDegree} / ${e.graduationMax} )',
                                      ),
                                      pw.SizedBox(height: 4),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    /// Add experiences information
                    pw.SizedBox(height: 16),
                    pw.Text(
                      'Work Experiences',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(color: PdfColors.indigo, height: 2),
                    pw.SizedBox(height: 8),
                    pw.ListView(
                      children: [
                        pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Expanded(
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: workExperiences.map((e) {
                                  final startDate =
                                      '${e.startedAt.month}.${e.startedAt.year}';
                                  final endDate = (e.stillWorking == null ||
                                          e.stillWorking == false)
                                      ? '${e.endedAt!.month}.${e.endedAt!.year}'
                                      : 'Continues';
                                  return pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      listTileHeaderText(
                                        '$startDate - $endDate',
                                      ),
                                      listTileContentText(
                                        '-',
                                        tColor: PdfColors.white,
                                      ),
                                      pw.SizedBox(height: 4),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                            pw.Expanded(
                              flex: 2,
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: workExperiences.map((e) {
                                  return pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      listTileContentText(
                                        '${e.companyName} - ${e.companySector}',
                                      ),
                                      listTileContentText(
                                        e.title,
                                      ),
                                      pw.SizedBox(height: 4),
                                    ],
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    /// Add skills information
                    pw.SizedBox(height: 16),
                    pw.Text(
                      'Skills',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Divider(color: PdfColors.indigo, height: 2),
                    pw.SizedBox(height: 8),
                    pw.Wrap(
                      children: [
                        getIt<SkillsBloc>().state.maybeWhen(
                              orElse: () => pw.Text(
                                'Skills not found.',
                                style: const pw.TextStyle(
                                  fontSize: 10,
                                  color: PdfColors.grey800,
                                ),
                              ),
                              skillsSuccess: (skills) {
                                return pw.ListView(
                                  children: skills.map((e) {
                                    return pw.Row(
                                      children: [
                                        pw.Expanded(
                                          child: pw.Text(
                                            e.name,
                                            style: const pw.TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                        pw.SizedBox(width: 4),
                                        pw.Expanded(
                                          child: pw.Text(
                                            e.level,
                                            style: const pw.TextStyle(
                                              color: PdfColors.grey600,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                );
                              },
                            ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

    return _savePdfFileMethod(fileName, pdf);
  }

  static Future<Uint8List> _savePdfFileMethod(
    String fileName,
    pw.Document pdf,
  ) async {
    late final Uint8List image;
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$fileName');
    await file.writeAsBytes(await pdf.save());
    await for (final page in Printing.raster(await pdf.save(), pages: [0])) {
      await page.toPng().then((value) => image = value);
      log('Pdf created--> ${image.length}');
    }

    return image;
  }
}
