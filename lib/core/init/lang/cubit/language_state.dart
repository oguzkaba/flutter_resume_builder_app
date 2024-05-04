// ignore_for_file: public_member_api_docs

part of 'language_cubit.dart';

class LanguageState {
  const LanguageState(this.locale);
  final Locale locale;

  List<Object> get props => [locale];
}
