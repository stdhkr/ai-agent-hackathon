// GENERATED CODE - DO NOT MODIFY BY HAND

part of 're_generate_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reGenerateHash() => r'5ea401aef6360757e29173f0f1ac1b07d735e775';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ReGenerate
    extends BuildlessAutoDisposeAsyncNotifier<ReGenerateState> {
  late final Mnemonic originalMnemonic;

  FutureOr<ReGenerateState> build(
    Mnemonic originalMnemonic,
  );
}

/// See also [ReGenerate].
@ProviderFor(ReGenerate)
const reGenerateProvider = ReGenerateFamily();

/// See also [ReGenerate].
class ReGenerateFamily extends Family<AsyncValue<ReGenerateState>> {
  /// See also [ReGenerate].
  const ReGenerateFamily();

  /// See also [ReGenerate].
  ReGenerateProvider call(
    Mnemonic originalMnemonic,
  ) {
    return ReGenerateProvider(
      originalMnemonic,
    );
  }

  @override
  ReGenerateProvider getProviderOverride(
    covariant ReGenerateProvider provider,
  ) {
    return call(
      provider.originalMnemonic,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'reGenerateProvider';
}

/// See also [ReGenerate].
class ReGenerateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ReGenerate, ReGenerateState> {
  /// See also [ReGenerate].
  ReGenerateProvider(
    Mnemonic originalMnemonic,
  ) : this._internal(
          () => ReGenerate()..originalMnemonic = originalMnemonic,
          from: reGenerateProvider,
          name: r'reGenerateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reGenerateHash,
          dependencies: ReGenerateFamily._dependencies,
          allTransitiveDependencies:
              ReGenerateFamily._allTransitiveDependencies,
          originalMnemonic: originalMnemonic,
        );

  ReGenerateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.originalMnemonic,
  }) : super.internal();

  final Mnemonic originalMnemonic;

  @override
  FutureOr<ReGenerateState> runNotifierBuild(
    covariant ReGenerate notifier,
  ) {
    return notifier.build(
      originalMnemonic,
    );
  }

  @override
  Override overrideWith(ReGenerate Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReGenerateProvider._internal(
        () => create()..originalMnemonic = originalMnemonic,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        originalMnemonic: originalMnemonic,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ReGenerate, ReGenerateState>
      createElement() {
    return _ReGenerateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReGenerateProvider &&
        other.originalMnemonic == originalMnemonic;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, originalMnemonic.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReGenerateRef on AutoDisposeAsyncNotifierProviderRef<ReGenerateState> {
  /// The parameter `originalMnemonic` of this provider.
  Mnemonic get originalMnemonic;
}

class _ReGenerateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ReGenerate, ReGenerateState>
    with ReGenerateRef {
  _ReGenerateProviderElement(super.provider);

  @override
  Mnemonic get originalMnemonic =>
      (origin as ReGenerateProvider).originalMnemonic;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
