import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/init/network/connectivity_info.dart';
import 'package:fixresume/features/resume/data/datasources/resume_remote_datasource.dart';
import 'package:fixresume/features/resume/data/models/resumes_model.dart';
import 'package:fixresume/features/resume/data/models/sections/educations_model.dart';
import 'package:fixresume/features/resume/data/models/sections/exams_model.dart';
import 'package:fixresume/features/resume/data/models/sections/experiences_model.dart';
import 'package:fixresume/features/resume/data/models/sections/personal_details_model.dart';
import 'package:fixresume/features/resume/data/models/sections/personal_info_model.dart';
import 'package:fixresume/features/resume/data/models/sections/references_model.dart';
import 'package:fixresume/features/resume/data/models/sections/skills_model.dart';
import 'package:fixresume/features/resume/data/models/sections/social_accounts_model.dart';
import 'package:fixresume/features/resume/domain/entities/resumes_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/educations_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/exams_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/experiences_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_details_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_info_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/references_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/skills_entity.dart';
import 'package:fixresume/features/resume/domain/entities/sections/social_accounts_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ResumeRepository)
class ResumeRepositoryImpl implements ResumeRepository {
  ResumeRepositoryImpl(
    this.remoteDataSource,
    this.connectivityInfo,
  );

  final ResumeRemoteDataSource remoteDataSource;
  final ConnectivityInfo connectivityInfo;

  @override
  Future<Either<Failure, void>> addEducations({
    required EducationsEntity educationsEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addEducations(
        educationsModel: educationsEntity as EducationsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addExams({required ExamsEntity examsEntity}) {
    return _insertEntity<void>(
      () => remoteDataSource.addExams(
        examsModel: examsEntity as ExamsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addExperiences({
    required ExperiencesEntity experiencesEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addExperiences(
        experiencesModel: experiencesEntity as ExperiencesModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addPersonalDetails({
    required PersonalDetailsEntity personalDetailsEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addPersonalDetails(
        personalDetailsModel: personalDetailsEntity as PersonalDetailsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addPersonalInfo({
    required PersonalInfoEntity personalInfoEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addPersonalInfo(
        personalInfoModel: PersonalInfoModel.fromEntity(personalInfoEntity),
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addReferences({
    required ReferencesEntity referencesEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addReferences(
        referencesModel: referencesEntity as ReferencesModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addResumes({
    required ResumesEntity resumesEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addResumes(
        resumesModel: resumesEntity as ResumesModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addSkills({
    required SkillsEntity skillsEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addSkills(
        skillsModel: skillsEntity as SkillsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> addSocialAccounts({
    required SocialAccountsEntity socialAccountsEntity,
  }) {
    return _insertEntity<void>(
      () => remoteDataSource.addSocialAccounts(
        socialAccountsModel: socialAccountsEntity as SocialAccountsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> deleteEducations({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deleteEducations(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deleteExams({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deleteExams(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deleteExperiences({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deleteExperiences(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deletePersonalDetails({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deletePersonalDetails(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deletePersonalInfo({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deletePersonalInfo(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deleteReferences({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deleteReferences(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deleteResumes({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deleteResumes(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deleteSkills({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deleteSkills(id: id),
    );
  }

  @override
  Future<Either<Failure, void>> deleteSocialAccounts({required int id}) {
    return _deleteEntity<void>(
      () => remoteDataSource.deleteSocialAccounts(id: id),
    );
  }

  @override
  Future<Either<Failure, List<EducationsEntity>>> getEducations() {
    return _getterEntity(remoteDataSource.getEducations);
  }

  @override
  Future<Either<Failure, List<ExamsEntity>>> getExams() {
    return _getterEntity(remoteDataSource.getExams);
  }

  @override
  Future<Either<Failure, List<ExperiencesEntity>>> getExperiences() async {
    return _getterEntity(remoteDataSource.getExperiences);
  }

  @override
  Future<Either<Failure, PersonalDetailsEntity>> getPersonalDetails() {
    return _getterEntity(remoteDataSource.getPersonalDetails);
  }

  @override
  Future<Either<Failure, PersonalInfoEntity>> getPersonalInfo() {
    return _getterEntity(remoteDataSource.getPersonalInfo);
  }

  @override
  Future<Either<Failure, List<ReferencesEntity>>> getReferences() {
    return _getterEntity(remoteDataSource.getReferences);
  }

  @override
  Future<Either<Failure, List<ResumesEntity>>> getResumes() {
    return _getterEntity(remoteDataSource.getResumes);
  }

  @override
  Future<Either<Failure, List<SkillsEntity>>> getSkills() {
    return _getterEntity(remoteDataSource.getSkills);
  }

  @override
  Future<Either<Failure, List<SocialAccountsEntity>>> getSocialAccounts() {
    return _getterEntity(remoteDataSource.getSocialAccounts);
  }

  @override
  Future<Either<Failure, void>> updateEducations({
    required EducationsEntity educationsEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updateEducations(
        educationsModel: educationsEntity as EducationsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updateExams({
    required ExamsEntity examsEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updateExams(
        examsModel: examsEntity as ExamsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updateExperiences({
    required ExperiencesEntity experiencesEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updateExperiences(
        experiencesModel: experiencesEntity as ExperiencesModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updatePersonalDetails({
    required PersonalDetailsEntity personalDetailsEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updatePersonalDetails(
        personalDetailsModel: personalDetailsEntity as PersonalDetailsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updatePersonalInfo({
    required PersonalInfoEntity personalInfoEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updatePersonalInfo(
        personalInfoModel: PersonalInfoModel.fromEntity(personalInfoEntity),
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updateReferences({
    required ReferencesEntity referencesEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updateReferences(
        referencesModel: referencesEntity as ReferencesModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updateResumes({
    required ResumesEntity resumesEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updateResumes(
        resumesModel: resumesEntity as ResumesModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updateSkills({
    required SkillsEntity skillsEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updateSkills(
        skillsModel: skillsEntity as SkillsModel,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updateSocialAccounts({
    required SocialAccountsEntity socialAccountsEntity,
  }) {
    return _updateEntity<void>(
      () => remoteDataSource.updateSocialAccounts(
        socialAccountsModel: socialAccountsEntity as SocialAccountsModel,
      ),
    );
  }

  /// Getter entity function for getting data from remote data source
  Future<Either<Failure, T>> _getterEntity<T>(
    Future<T> Function() function,
  ) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      }
      final entity = await function();

      return right(entity);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  /// Insert entity function for inserting data to remote data source
  Future<Either<Failure, void>> _insertEntity<T>(
    Future<void> Function() function,
  ) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      }
      await function();

      return right(null);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  /// Update entity function for updating data to remote data source
  Future<Either<Failure, void>> _updateEntity<T>(
    Future<void> Function() function,
  ) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      }
      await function();

      return right(null);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }

  /// Delete entity function for deleting data from remote data source
  Future<Either<Failure, void>> _deleteEntity<T>(
    Future<void> Function() function,
  ) async {
    try {
      if (!await connectivityInfo.isConnected) {
        return left(ConnectionFailure(errorMessage: 'No internet connection!'));
      }
      await function();

      return right(null);
    } on ServerException catch (e) {
      return left(ServerFailure(errorMessage: e.message));
    }
  }
}
