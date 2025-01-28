import 'dart:convert';

import 'package:chat_app/features/mnemonics/domain/entities/mnemonic.dart';
import 'package:chat_app/features/mnemonics/domain/entities/mnemonic_detail_page_extra.dart';

class ExtraCodec extends Codec<Object?, Object?> {
  const ExtraCodec();

  @override
  Converter<Object?, Object?> get decoder => const _ExtraDecoder();

  @override
  Converter<Object?, Object?> get encoder => const _ExtraEncoder();
}

class _ExtraDecoder extends Converter<Object?, Object?> {
  const _ExtraDecoder();

  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }

    final list = input as List<Object?>;

    final typeName = list[0] as String?;
    if (typeName == null) {
      throw const FormatException('The first element (typeName) is null.');
    }
    switch (typeName) {
      case 'MnemonicDetailPageExtra':
        final rawMnemonics = list[1] as List<dynamic>?;
        if (rawMnemonics == null) {
          throw const FormatException('rawMnemonics is null.');
        }

        final mnemonics = rawMnemonics
            .map((item) => Mnemonic.fromJson(item as Map<String, dynamic>))
            .toList();

        final initialIndex = list[2] as int?;
        if (initialIndex == null) {
          throw const FormatException('initialIndex is null.');
        }

        return MnemonicDetailPageExtra(
          mnemonics: mnemonics,
          initialIndex: initialIndex,
        );
      case 'Mnemonic':
        final rawMnemonic = list[1] as Map<String, dynamic>?;
        if (rawMnemonic == null) {
          throw const FormatException('rawMnemonic is null.');
        }

        return Mnemonic.fromJson(rawMnemonic);

      default:
        throw FormatException('Unable to parse input: $input');
    }
  }
}

class _ExtraEncoder extends Converter<Object?, Object?> {
  const _ExtraEncoder();

  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    if (input is MnemonicDetailPageExtra) {
      return <Object?>[
        'MnemonicDetailPageExtra',
        input.mnemonics.map((m) => m.toJsonAsStringDates()).toList(),
        input.initialIndex,
      ];
    } else if (input is Mnemonic) {
      return <Object?>[
        'Mnemonic',
        input.toJsonAsStringDates(),
      ];
    }

    throw FormatException('Cannot encode type ${input.runtimeType}');
  }
}
