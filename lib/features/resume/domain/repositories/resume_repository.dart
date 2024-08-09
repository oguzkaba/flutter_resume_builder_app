import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/features/resume/domain/entities/resumes_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/educations_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/exams_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/experiences_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_details_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_info_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/references_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/skills_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/social_accounts_entity.dart';

abstract interface class ResumeRepository {
  Future<Either<Failure, PersonalInfoEntity>> getPersonalInfo();
  Future<Either<Failure, void>> addPersonalInfo({
    required PersonalInfoEntity personalInfoEntity,
  });
  Future<Either<Failure, void>> updatePersonalInfo({
    required PersonalInfoEntity personalInfoEntity,
  });
  Future<Either<Failure, void>> deletePersonalInfo({
    required int id,
  });

  Future<Either<Failure, PersonalDetailsEntity>> getPersonalDetails();
  Future<Either<Failure, void>> addPersonalDetails({
    required PersonalDetailsEntity personalDetailsEntity,
  });
  Future<Either<Failure, void>> updatePersonalDetails({
    required PersonalDetailsEntity personalDetailsEntity,
  });
  Future<Either<Failure, void>> deletePersonalDetails({
    required int id,
  });

  Future<Either<Failure, List<EducationsEntity>>> getEducations();
  Future<Either<Failure, void>> addEducations({
    required EducationsEntity educationsEntity,
  });
  Future<Either<Failure, void>> updateEducations({
    required EducationsEntity educationsEntity,
  });
  Future<Either<Failure, void>> deleteEducations({
    required int id,
  });

  Future<Either<Failure, List<ExperiencesEntity>>> getExperiences();
  Future<Either<Failure, void>> addExperiences({
    required ExperiencesEntity experiencesEntity,
  });
  Future<Either<Failure, void>> updateExperiences({
    required ExperiencesEntity experiencesEntity,
  });
  Future<Either<Failure, void>> deleteExperiences({
    required int id,
  });

  Future<Either<Failure, List<SkillsEntity>>> getSkills();
  Future<Either<Failure, void>> addSkills({
    required SkillsEntity skillsEntity,
  });
  Future<Either<Failure, void>> updateSkills({
    required SkillsEntity skillsEntity,
  });
  Future<Either<Failure, void>> deleteSkills({
    required int id,
  });

  Future<Either<Failure, List<ExamsEntity>>> getExams();
  Future<Either<Failure, void>> addExams({
    required ExamsEntity examsEntity,
  });
  Future<Either<Failure, void>> updateExams({
    required ExamsEntity examsEntity,
  });
  Future<Either<Failure, void>> deleteExams({
    required int id,
  });

  Future<Either<Failure, List<SocialAccountsEntity>>> getSocialAccounts();
  Future<Either<Failure, void>> addSocialAccounts({
    required SocialAccountsEntity socialAccountsEntity,
  });
  Future<Either<Failure, void>> updateSocialAccounts({
    required SocialAccountsEntity socialAccountsEntity,
  });
  Future<Either<Failure, void>> deleteSocialAccounts({
    required int id,
  });

  Future<Either<Failure, List<ReferencesEntity>>> getReferences();
  Future<Either<Failure, void>> addReferences({
    required ReferencesEntity referencesEntity,
  });
  Future<Either<Failure, void>> updateReferences({
    required ReferencesEntity referencesEntity,
  });
  Future<Either<Failure, void>> deleteReferences({
    required int id,
  });

  Future<Either<Failure, List<ResumesEntity>>> getResumes();
  Future<Either<Failure, void>> addResumes({
    required ResumesEntity resumesEntity,
  });
  Future<Either<Failure, void>> updateResumes({
    required ResumesEntity resumesEntity,
  });
  Future<Either<Failure, void>> deleteResumes({
    required int id,
  });
}
