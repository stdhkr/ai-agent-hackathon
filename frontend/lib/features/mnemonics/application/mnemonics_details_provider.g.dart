// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mnemonics_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mnemonicsDetailsHash() => r'0940ae051e6ef80615897b2f8192eae1e068d279';

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

abstract class _$MnemonicsDetails extends BuildlessAutoDisposeNotifier<int> {
  late final int initialIndex;

  int build(
    int initialIndex,
  );
}

/// See also [MnemonicsDetails].
@ProviderFor(MnemonicsDetails)
const mnemonicsDetailsProvider = MnemonicsDetailsFamily();

/// See also [MnemonicsDetails].
class MnemonicsDetailsFamily extends Family<int> {
  /// See also [MnemonicsDetails].
  const MnemonicsDetailsFamily();

  /// See also [MnemonicsDetails].
  MnemonicsDetailsProvider call(
    int initialIndex,
  ) {
    return MnemonicsDetailsProvider(
      initialIndex,
    );
  }

  @override
  MnemonicsDetailsProvider getProviderOverride(
    covariant MnemonicsDetailsProvider provider,
  ) {
    return call(
      provider.initialIndex,
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
  String? get name => r'mnemonicsDetailsProvider';
}

/// See also [MnemonicsDetails].
class MnemonicsDetailsProvider
    extends AutoDisposeNotifierProviderImpl<MnemonicsDetails, int> {
  /// See also [MnemonicsDetails].
  MnemonicsDetailsProvider(
    int initialIndex,
  ) : this._internal(
          () => MnemonicsDetails()..initialIndex = initialIndex,
          from: mnemonicsDetailsProvider,
          name: r'mnemonicsDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mnemonicsDetailsHash,
          dependencies: MnemonicsDetailsFamily._dependencies,
          allTransitiveDependencies:
              MnemonicsDetailsFamily._allTransitiveDependencies,
          initialIndex: initialIndex,
        );

  MnemonicsDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialIndex,
  }) : super.internal();

  final int initialIndex;

  @override
  int runNotifierBuild(
    covariant MnemonicsDetails notifier,
  ) {
    return notifier.build(
      initialIndex,
    );
  }

  @override
  Override overrideWith(MnemonicsDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: MnemonicsDetailsProvider._internal(
        () => create()..initialIndex = initialIndex,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialIndex: initialIndex,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MnemonicsDetails, int> createElement() {
    return _MnemonicsDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MnemonicsDetailsProvider &&
        other.initialIndex == initialIndex;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialIndex.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MnemonicsDetailsRef on AutoDisposeNotifierProviderRef<int> {
  /// The parameter `initialIndex` of this provider.
  int get initialIndex;
}

class _MnemonicsDetailsProviderElement
    extends AutoDisposeNotifierProviderElement<MnemonicsDetails, int>
    with MnemonicsDetailsRef {
  _MnemonicsDetailsProviderElement(super.provider);

  @override
  int get initialIndex => (origin as MnemonicsDetailsProvider).initialIndex;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
