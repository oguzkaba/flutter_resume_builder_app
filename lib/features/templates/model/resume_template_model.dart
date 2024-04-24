// ignore_for_file: public_member_api_docs

import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';

final class ResumeTemplateModel {
  ResumeTemplateModel({
    required this.name,
    required this.description,
    required this.image,
    required this.category,
    required this.premium,
    this.price = 0,
  });

  final String name;
  final String description;
  final String image;
  final List<String> category;
  final bool premium;
  final double price;
  //final bool isFavorite;
  // final String file;

  static List<ResumeTemplateModel> getTemplates() {
    return <ResumeTemplateModel>[
      ResumeTemplateModel(
        name: 'Template 1',
        description: 'This is a simple template',
        image: 'resume/sample_resume1'.toPNG,
        category: <String>['All', 'Popular', 'Recommended', 'Premium'],
        premium: true,
        price: 10,
      ),
      ResumeTemplateModel(
        name: 'Template 2',
        description: 'This is a simple template',
        image: 'resume/sample_resume2'.toPNG,
        category: <String>['All', 'Most Selected', 'Newest', 'Free'],
        premium: false,
      ),
      ResumeTemplateModel(
        name: 'Template 3',
        description: 'This is a simple template',
        image: 'resume/sample_resume3'.toPNG,
        category: <String>['All', 'Popular', 'Premium  '],
        premium: true,
        price: 10,
      ),
      ResumeTemplateModel(
        name: 'Template 4',
        description: 'This is a simple template',
        image: 'resume/sample_resume4'.toPNG,
        category: <String>['All', 'Popular', 'Recommended', 'Premium'],
        premium: true,
        price: 10,
      ),
      ResumeTemplateModel(
        name: 'Template 5',
        description: 'This is a simple template',
        image: 'resume/sample_resume5'.toPNG,
        category: <String>['All', 'Most Selected', 'Newest', 'Free'],
        premium: false,
      ),
      ResumeTemplateModel(
        name: 'Template 6',
        description: 'This is a simple template',
        image: 'resume/sample_resume6'.toPNG,
        category: <String>['All', 'Popular', 'Recommended', 'Premium'],
        premium: true,
        price: 10,
      ),
      ResumeTemplateModel(
        name: 'Template 7',
        description: 'This is a simple template',
        image: 'resume/sample_resume7'.toPNG,
        category: <String>['All', 'Popular', 'Recommended', 'Free'],
        premium: false,
      ),
      ResumeTemplateModel(
        name: 'Template 8',
        description: 'This is a simple template',
        image: 'resume/sample_resume8'.toPNG,
        category: <String>['All', 'Most Selected', 'Newest', 'Free'],
        premium: false,
      ),
      ResumeTemplateModel(
        name: 'Template 9',
        description: 'This is a simple template',
        image: 'resume/sample_resume9'.toPNG,
        category: <String>['All', 'Popular', 'Premium'],
        premium: true,
        price: 10,
      ),
      ResumeTemplateModel(
        name: 'Template 10',
        description: 'This is a simple template',
        image: 'resume/sample_resume10'.toPNG,
        category: <String>['All', 'Popular', 'Recommended', 'Premium'],
        premium: true,
        price: 10,
      ),
    ];
  }
}
