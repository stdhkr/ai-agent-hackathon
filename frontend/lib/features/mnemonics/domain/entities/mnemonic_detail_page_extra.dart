import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goronyan/features/mnemonics/domain/entities/mnemonic.dart';

part 'mnemonic_detail_page_extra.freezed.dart';
part 'mnemonic_detail_page_extra.g.dart';

@freezed
class MnemonicDetailPageExtra with _$MnemonicDetailPageExtra {
  const factory MnemonicDetailPageExtra({
    required List<Mnemonic> mnemonics,
    required int initialIndex,
  }) = _MnemonicDetailPageExtra;

  factory MnemonicDetailPageExtra.fromJson(Map<String, dynamic> json) =>
      _$MnemonicDetailPageExtraFromJson(json);
}
