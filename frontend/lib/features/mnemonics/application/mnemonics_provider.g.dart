// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mnemonics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mnemonicsHash() => r'8f0a14eca8c5c392a7f74aa67fc53fe4f2e155e6';

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

abstract class _$Mnemonics
    extends BuildlessAutoDisposeAsyncNotifier<MnemonicsState> {
  late final MenemonicsStateType type;

  FutureOr<MnemonicsState> build(
    MenemonicsStateType type,
  );
}

/// See also [Mnemonics].
@ProviderFor(Mnemonics)
const mnemonicsProvider = MnemonicsFamily();

/// See also [Mnemonics].
class MnemonicsFamily extends Family<AsyncValue<MnemonicsState>> {
  /// See also [Mnemonics].
  const MnemonicsFamily();

  /// See also [Mnemonics].
  MnemonicsProvider call(
    MenemonicsStateType type,
  ) {
    return MnemonicsProvider(
      type,
    );
  }

  @override
  MnemonicsProvider getProviderOverride(
    covariant MnemonicsProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'mnemonicsProvider';
}

/// See also [Mnemonics].
class MnemonicsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Mnemonics, MnemonicsState> {
  /// See also [Mnemonics].
  MnemonicsProvider(
    MenemonicsStateType type,
  ) : this._internal(
          () => Mnemonics()..type = type,
          from: mnemonicsProvider,
          name: r'mnemonicsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mnemonicsHash,
          dependencies: MnemonicsFamily._dependencies,
          allTransitiveDependencies: MnemonicsFamily._allTransitiveDependencies,
          type: type,
        );

  MnemonicsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final MenemonicsStateType type;

  @override
  FutureOr<MnemonicsState> runNotifierBuild(
    covariant Mnemonics notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(Mnemonics Function() create) {
    return ProviderOverride(
      origin: this,
      override: MnemonicsProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Mnemonics, MnemonicsState>
      createElement() {
    return _MnemonicsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MnemonicsProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MnemonicsRef on AutoDisposeAsyncNotifierProviderRef<MnemonicsState> {
  /// The parameter `type` of this provider.
  MenemonicsStateType get type;
}

class _MnemonicsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Mnemonics, MnemonicsState>
    with MnemonicsRef {
  _MnemonicsProviderElement(super.provider);

  @override
  MenemonicsStateType get type => (origin as MnemonicsProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
