extension IntNullableExtension on int? {
  String toStringOrDefault([int defaultValue = 0]) {
    return this?.toString() ?? defaultValue.toString();
  }
}
