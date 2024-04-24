// ignore_for_file: public_member_api_docs

extension AssetsExtension on String {
  String get toSVG => 'assets/images/svg/$this.svg';
  String get toPNG => 'assets/images/png/$this.png';
  String get toJSON => 'assets/jsons/$this.json';
  String get toLottie => 'assets/lotties/$this.json';
}
