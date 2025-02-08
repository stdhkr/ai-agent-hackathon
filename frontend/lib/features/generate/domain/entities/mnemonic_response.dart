import 'package:freezed_annotation/freezed_annotation.dart';

part 'mnemonic_response.freezed.dart';
part 'mnemonic_response.g.dart';

@freezed
class MnemonicResponse with _$MnemonicResponse {
  const factory MnemonicResponse({
    required String question,
    required String answer,
    required String meaning,
    required String episode,
    required List<String> goroTexts,
    required String imagePath,
  }) = _MnemonicResponse;

  factory MnemonicResponse.fromJson(Map<String, dynamic> json) =>
      _$MnemonicResponseFromJson(json);
}
