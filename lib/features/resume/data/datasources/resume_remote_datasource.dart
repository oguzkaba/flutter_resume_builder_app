import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/features/resume/data/models/resumes_model.dart';
import 'package:fixresume/features/resume/data/models/sections/educations_model.dart';
import 'package:fixresume/features/resume/data/models/sections/exams_model.dart';
import 'package:fixresume/features/resume/data/models/sections/experiences_model.dart';
import 'package:fixresume/features/resume/data/models/sections/personal_details_model.dart';
import 'package:fixresume/features/resume/data/models/sections/personal_info_model.dart';
import 'package:fixresume/features/resume/data/models/sections/references_model.dart';
import 'package:fixresume/features/resume/data/models/sections/skills_model.dart';
import 'package:fixresume/features/resume/data/models/sections/social_accounts_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class ResumeRemoteDataSource {
  /// Get Current User
  User? get currentUser;

  /// Personal Info
  Future<PersonalInfoModel> getPersonalInfo();
  Future<void> addPersonalInfo({
    required PersonalInfoModel personalInfoModel,
  });
  Future<void> updatePersonalInfo({
    required PersonalInfoModel personalInfoModel,
  });
  Future<void> deletePersonalInfo({required int id});

  /// PersonalDetails
  Future<PersonalDetailsModel> getPersonalDetails();
  Future<void> addPersonalDetails({
    required PersonalDetailsModel personalDetailsModel,
  });
  Future<void> updatePersonalDetails({
    required PersonalDetailsModel personalDetailsModel,
  });
  Future<void> deletePersonalDetails({required int id});

  /// Educations
  Future<List<EducationsModel>> getEducations();
  Future<void> addEducations({
    required EducationsModel educationsModel,
  });
  Future<void> updateEducations({
    required EducationsModel educationsModel,
  });
  Future<void> deleteEducations({
    required int id,
  });

  /// Experiences
  Future<List<ExperiencesModel>> getExperiences();
  Future<void> addExperiences({
    required ExperiencesModel experiencesModel,
  });
  Future<void> updateExperiences({
    required ExperiencesModel experiencesModel,
  });
  Future<void> deleteExperiences({
    required int id,
  });

  /// Skills
  Future<List<SkillsModel>> getSkills();
  Future<void> addSkills({
    required SkillsModel skillsModel,
  });
  Future<void> updateSkills({
    required SkillsModel skillsModel,
  });
  Future<void> deleteSkills({
    required int id,
  });

  /// Exams
  Future<List<ExamsModel>> getExams();
  Future<void> addExams({
    required ExamsModel examsModel,
  });
  Future<void> updateExams({
    required ExamsModel examsModel,
  });
  Future<void> deleteExams({
    required int id,
  });

  /// Social Accounts
  Future<List<SocialAccountsModel>> getSocialAccounts();
  Future<void> addSocialAccounts({
    required SocialAccountsModel socialAccountsModel,
  });
  Future<void> updateSocialAccounts({
    required SocialAccountsModel socialAccountsModel,
  });
  Future<void> deleteSocialAccounts({
    required int id,
  });

  /// References
  Future<List<ReferencesModel>> getReferences();
  Future<void> addReferences({
    required ReferencesModel referencesModel,
  });
  Future<void> updateReferences({
    required ReferencesModel referencesModel,
  });
  Future<void> deleteReferences({
    required int id,
  });

  /// Resumes
  Future<List<ResumesModel>> getResumes();
  Future<void> addResumes({
    required ResumesModel resumesModel,
  });
  Future<void> updateResumes({
    required ResumesModel resumesModel,
  });
  Future<void> deleteResumes({
    required int id,
  });
}

@Injectable(as: ResumeRemoteDataSource)
class ResumeRemoteDataSourceImpl implements ResumeRemoteDataSource {
  ResumeRemoteDataSourceImpl({required this.supabaseClient});
  final SupabaseClient supabaseClient;

  @override
  User? get currentUser => supabaseClient.auth.currentUser;

  @override
  Future<void> addEducations({
    required EducationsModel educationsModel,
  }) {
    return _insertModels<EducationsModel>(
      educationsModel.toJson(),
      'educations',
    );
  }

  @override
  Future<void> addExams({required ExamsModel examsModel}) {
    return _insertModels<ExamsModel>(
      examsModel.toJson(),
      'exams',
    );
  }

  @override
  Future<void> addExperiences({
    required ExperiencesModel experiencesModel,
  }) {
    return _insertModels<ExperiencesModel>(
      experiencesModel.toJson(),
      'experiences',
    );
  }

  @override
  Future<void> addPersonalDetails({
    required PersonalDetailsModel personalDetailsModel,
  }) {
    return _insertModels<PersonalDetailsModel>(
      personalDetailsModel.toJson(),
      'personal_details',
    );
  }

  @override
  Future<void> addPersonalInfo({
    required PersonalInfoModel personalInfoModel,
  }) {
    return _insertModels<PersonalInfoModel>(
      personalInfoModel.toJson(),
      'personal_info',
    );
  }

  @override
  Future<void> addReferences({
    required ReferencesModel referencesModel,
  }) {
    return _insertModels<ReferencesModel>(
      referencesModel.toJson(),
      'references',
    );
  }

  @override
  Future<void> addResumes({required ResumesModel resumesModel}) {
    return _insertModels<ResumesModel>(
      resumesModel.toJson(),
      'resumes',
    );
  }

  @override
  Future<void> addSkills({required SkillsModel skillsModel}) {
    return _insertModels<SkillsModel>(
      skillsModel.toJson(),
      'skills',
    );
  }

  @override
  Future<void> addSocialAccounts({
    required SocialAccountsModel socialAccountsModel,
  }) {
    return _insertModels<SocialAccountsModel>(
      socialAccountsModel.toJson(),
      'social_accounts',
    );
  }

  @override
  Future<void> deleteEducations({required int id}) {
    return _deleteModels<EducationsModel>(id, 'educations');
  }

  @override
  Future<void> deleteExams({required int id}) {
    return _deleteModels<ExamsModel>(id, 'exams');
  }

  @override
  Future<void> deleteExperiences({required int id}) {
    return _deleteModels<ExperiencesModel>(id, 'experiences');
  }

  @override
  Future<void> deletePersonalDetails({required int id}) {
    return _deleteModels<PersonalDetailsModel>(id, 'personal_details');
  }

  @override
  Future<void> deletePersonalInfo({required int id}) {
    return _deleteModels<PersonalInfoModel>(id, 'personal_info');
  }

  @override
  Future<void> deleteReferences({required int id}) {
    return _deleteModels<ReferencesModel>(id, 'references');
  }

  @override
  Future<void> deleteResumes({required int id}) {
    return _deleteModels<ResumesModel>(id, 'resumes');
  }

  @override
  Future<void> deleteSkills({required int id}) {
    return _deleteModels<SkillsModel>(id, 'skills');
  }

  @override
  Future<void> deleteSocialAccounts({required int id}) {
    return _deleteModels<SocialAccountsModel>(id, 'social_accounts');
  }

  @override
  Future<List<EducationsModel>> getEducations() {
    return _getterModels(educationsModelFromJson, 'educations');
  }

  @override
  Future<List<ExamsModel>> getExams() {
    return _getterModels(examsModelFromJson, 'exams');
  }

  @override
  Future<List<ExperiencesModel>> getExperiences() async {
    return _getterModels(experiencesModelFromJson, 'experiences');
  }

  @override
  Future<PersonalDetailsModel> getPersonalDetails() {
    return _getterModels(
      personalDetailsModelFromJsonSingle,
      'personal_details',
    );
  }

  @override
  Future<PersonalInfoModel> getPersonalInfo() {
    return _getterModels(personalInfoModelFromJsonSingle, 'personal_info');
  }

  @override
  Future<List<ReferencesModel>> getReferences() {
    return _getterModels(referencesModelFromJson, 'references');
  }

  @override
  Future<List<ResumesModel>> getResumes() {
    return _getterModels(resumesModelFromJson, 'resumes');
  }

  @override
  Future<List<SkillsModel>> getSkills() {
    return _getterModels(skillsModelFromJson, 'skills');
  }

  @override
  Future<List<SocialAccountsModel>> getSocialAccounts() {
    return _getterModels(socialAccountsModelFromJson, 'social_accounts');
  }

  @override
  Future<void> updateEducations({
    required EducationsModel educationsModel,
  }) {
    return _updateModels<EducationsModel>(
      educationsModel.toJson(),
      'educations',
    );
  }

  @override
  Future<void> updateExams({required ExamsModel examsModel}) {
    return _updateModels<ExamsModel>(examsModel.toJson(), 'exams');
  }

  @override
  Future<void> updateExperiences({
    required ExperiencesModel experiencesModel,
  }) {
    return _updateModels<ExperiencesModel>(
      experiencesModel.toJson(),
      'experiences',
    );
  }

  @override
  Future<void> updatePersonalDetails({
    required PersonalDetailsModel personalDetailsModel,
  }) {
    return _updateModels<PersonalDetailsModel>(
      personalDetailsModel.toJson(),
      'personal_details',
    );
  }

  @override
  Future<void> updatePersonalInfo({
    required PersonalInfoModel personalInfoModel,
  }) {
    return _updateModels<PersonalInfoModel>(
      personalInfoModel.toJson(),
      'personal_info',
    );
  }

  @override
  Future<void> updateReferences({
    required ReferencesModel referencesModel,
  }) {
    return _updateModels<ReferencesModel>(
      referencesModel.toJson(),
      'references',
    );
  }

  @override
  Future<void> updateResumes({required ResumesModel resumesModel}) {
    return _updateModels<ResumesModel>(resumesModel.toJson(), 'resumes');
  }

  @override
  Future<void> updateSkills({required SkillsModel skillsModel}) {
    return _updateModels<SkillsModel>(skillsModel.toJson(), 'skills');
  }

  @override
  Future<void> updateSocialAccounts({
    required SocialAccountsModel socialAccountsModel,
  }) {
    return _updateModels<SocialAccountsModel>(
      socialAccountsModel.toJson(),
      'social_accounts',
    );
  }

  /// Getter Models Function to handle exceptions and errors in the future
  Future<T> _getterModels<T>(
    T Function(List<dynamic>) function,
    String tableName,
  ) async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }

      final response = await supabaseClient
          .from(tableName)
          .select()
          .eq('user_id', currentUser!.id);

      return function(response);
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  /// Insert Models Function to handle exceptions and errors in the future
  Future<void> _insertModels<T>(
    Map<String, dynamic> model,
    String tableName,
  ) async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }

      await supabaseClient.from(tableName).upsert(model);
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  /// Update Models Function to handle exceptions and errors in the future
  Future<void> _updateModels<T>(
    Map<String, dynamic> model,
    String tableName,
  ) async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }

      await supabaseClient
          .from(tableName)
          .upsert(model)
          .eq('id', model['id'] as int)
          .eq('user_id', currentUser!.id);
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  /// Delete Models Function to handle exceptions and errors in the future
  Future<void> _deleteModels<T>(
    int id,
    String tableName,
  ) async {
    try {
      if (currentUser == null) {
        throw ServerException(message: 'User not logged in!');
      }

      await supabaseClient
          .from(tableName)
          .delete()
          .eq('id', id)
          .eq('user_id', currentUser!.id);
    } on AuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
