extension DynamicCastExtension on dynamic {
  DateTime? get toCastDateTimeOrNull =>
      this == null ? null : DateTime.parse(this as String);
  DateTime get toCastDateTime => DateTime.parse(this as String);

  List<T> toCastList<T>() =>
      List<T>.from((this as List).map((e) => e as T).toList());

  List<T>? toCastListOrNull<T>() => this == null
      ? null
      : List<T>.from((this as List).map((e) => e as T).toList());
}
