extension AssetsExtension on String {
  String get toSVG => 'assets/images/svg/$this.svg';
  String get toPNG => 'assets/images/png/$this.png';
  String get toAppIcon => 'assets/images/app/$this.png';
  String get toJSON => 'assets/jsons/$this.json';
  String get toLottie => 'assets/lotties/$this.json';
  String get toHtml => 'assets/files/html/$this.html';
}
