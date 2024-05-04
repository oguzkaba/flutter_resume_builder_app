import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';

/// Preview Resume View
class PreviewResumeView extends StatelessWidget {
  /// Constructor
  const PreviewResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.myLightGrey,
      appBar: AppBar(
        title: Text(
          'Preview Resume',
          style: context.size18Bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _demoResumePreviewSheet(
                  context,
                  page: 1,
                  totalPage: 3,
                  resumePath: 'resume/sample_resume6',
                ),
                context.verticalPaddingSmall,
                _demoResumePreviewSheet(
                  context,
                  page: 2,
                  totalPage: 3,
                  resumePath: 'resume/sample_resume4',
                ),
                context.verticalPaddingSmall,
                _demoResumePreviewSheet(
                  context,
                  page: 3,
                  totalPage: 3,
                  resumePath: 'resume/sample_resume5',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack _demoResumePreviewSheet(
    BuildContext context, {
    required int page,
    required int totalPage,
    required String resumePath,
  }) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          resumePath.toPNG,
          fit: BoxFit.scaleDown,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            '-$page/$totalPage-',
            style: context.size12BoldWithColor(
              ColorConstants.myMediumGrey,
            ),
          ),
        ),
      ],
    );
  }
}
