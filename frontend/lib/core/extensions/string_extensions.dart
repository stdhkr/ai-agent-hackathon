extension NullableStringExtensions on String? {
  bool get isNotNullOrEmpty {
    return this != null && this!.isNotEmpty;
  }
}
