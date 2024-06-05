import 'dart:io';

import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

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

  static Future<void> createPdf(
    String fileName,
    UserDetailsEntity user,
  ) async {
    ///Image Asset or Network
    final image = await rootBundle.load('avatar'.toPNG);
    final imageData = pw.MemoryImage(image.buffer.asUint8List());

    late pw.Image profileImage;

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

    final pdf = pw.Document();
    final baseFont = await PdfGoogleFonts.montserratSemiBold();
    final boldFont = await PdfGoogleFonts.montserratBold();

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
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                children: [
                  pw.ClipOval(
                    child: pw.Container(
                      width: 80,
                      height: 80,
                      child: profileImage,
                    ),
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        '${user.currentUser.userMetadata?['full_name']}',
                        style: pw.TextStyle(
                          fontSize: 14,
                          fontWeight: pw.FontWeight.normal,
                        ),
                      ),
                      pw.Text(
                        '${user.currentUser.email}',
                        style: pw.TextStyle(
                          fontSize: 16,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );

    await _savePdfFileMethod(fileName, pdf);
  }

  static Future<void> _savePdfFileMethod(
    String fileName,
    pw.Document pdf,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$fileName');
    await file.writeAsBytes(await pdf.save());
  }
}
