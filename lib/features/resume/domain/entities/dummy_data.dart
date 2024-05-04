import 'package:flutter_resume_builder_app/features/resume/domain/entities/resume_entity.dart';
import 'package:flutter_resume_builder_app/features/resume/domain/entities/sections/sections.dart';

/// A sample resume entity for testing purposes
final resumeEntitySample = ResumeEntity(
  id: 1,
  name: 'John Doe',
  personalDetails: PersonalDetailsEntity(
    email: '  [email protected]',
    phone: '+1234567890',
    linkedin: 'https://www.linkedin.com/in/johndoe',
    github: '',
    city: 'New York',
    country: 'USA',
    birthDate: DateTime.now(),
    countryCode: 90,
    name: '',
    lastName: '',
    gender: Gender.male,
    title: '',
  ),
  summary: 'A passionate software developer with 5 years of experience',
  createdDate: DateTime.now(),
  lastUpdatedDate: DateTime.now(),
  experiences: [
    ExperienceEntity(
      companyName: 'Google',
      companySector: 'Technology',
      title: 'Software Developer',
      startingDate: DateTime.now(),
      jobType: JobType.fullTime,
      endingDate: DateTime.now(),
      stillWorking: false,
      additionalInfo: 'Worked on the Flutter project',
    ),
  ],
  educations: [
    EducationEntity(
      schoolName: 'Harvard University',
      startingDate: DateTime.now(),
      endingDate: DateTime.now(),
      educationLevel: EducationLevel.bachelor,
      schoolType: SchoolType.faculty,
      department: '',
    ),
  ],
  skills: [
    const SkillEntity(
      skillName: 'Flutter',
      skillLevel: SkillLevel.expert,
      skillType: SkillType.technology,
    ),
  ],
  exams: [
    ExamEntity(
      examName: 'TOEFL',
      examDate: DateTime.now(),
      testConductedBy: 'ETS',
      examResult: ExamResult.passed,
      examDescription: 'Test of English as a Foreign Language',
    ),
  ],
  certifications: [
    CertificationEntity(
      certificateName: 'Google Certified Professional Cloud Architect',
      certificateDate: DateTime.now(),
      organization: 'Google',
      description:
          'A Professional Cloud Architect enables organizations to leverage Google Cloud technologies.',
    ),
  ],
  languages: [
    const LanguageEntity(
      languageName: 'English',
      languageLevel: LanguageLevel.expert,
      isNative: true,
    ),
  ],
  projects: [
    ProjectEntity(
      projectName: 'Flutter Resume Builder',
      projectDescription: 'A resume builder application built with Flutter',
      projectLink: '',
      projectDate: DateTime.now(),
    ),
  ],
  references: [
    const ReferenceEntity(
      referenceName: 'Jane',
      referenceTitle: 'Software Developer',
      referenceCompany: 'Google',
      referenceEmail: '  [email protected]',
      referencePhone: '+1234567890',
      referenceLastName: 'Doe',
    ),
  ],
  interests: ['Reading', 'Travelling'],
);
