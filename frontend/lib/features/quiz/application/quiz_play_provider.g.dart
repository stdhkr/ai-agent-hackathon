// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_play_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizPlayHash() => r'404b7c0652f77c2096a7b89d60f82715fac153ad';

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

abstract class _$QuizPlay
    extends BuildlessAutoDisposeAsyncNotifier<QuizPlayState> {
  late final bool isOnlyUnmemorizeds;

  FutureOr<QuizPlayState> build(
    bool isOnlyUnmemorizeds,
  );
}

/// See also [QuizPlay].
@ProviderFor(QuizPlay)
const quizPlayProvider = QuizPlayFamily();

/// See also [QuizPlay].
class QuizPlayFamily extends Family<AsyncValue<QuizPlayState>> {
  /// See also [QuizPlay].
  const QuizPlayFamily();

  /// See also [QuizPlay].
  QuizPlayProvider call(
    bool isOnlyUnmemorizeds,
  ) {
    return QuizPlayProvider(
      isOnlyUnmemorizeds,
    );
  }

  @override
  QuizPlayProvider getProviderOverride(
    covariant QuizPlayProvider provider,
  ) {
    return call(
      provider.isOnlyUnmemorizeds,
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
  String? get name => r'quizPlayProvider';
}

/// See also [QuizPlay].
class QuizPlayProvider
    extends AutoDisposeAsyncNotifierProviderImpl<QuizPlay, QuizPlayState> {
  /// See also [QuizPlay].
  QuizPlayProvider(
    bool isOnlyUnmemorizeds,
  ) : this._internal(
          () => QuizPlay()..isOnlyUnmemorizeds = isOnlyUnmemorizeds,
          from: quizPlayProvider,
          name: r'quizPlayProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quizPlayHash,
          dependencies: QuizPlayFamily._dependencies,
          allTransitiveDependencies: QuizPlayFamily._allTransitiveDependencies,
          isOnlyUnmemorizeds: isOnlyUnmemorizeds,
        );

  QuizPlayProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isOnlyUnmemorizeds,
  }) : super.internal();

  final bool isOnlyUnmemorizeds;

  @override
  FutureOr<QuizPlayState> runNotifierBuild(
    covariant QuizPlay notifier,
  ) {
    return notifier.build(
      isOnlyUnmemorizeds,
    );
  }

  @override
  Override overrideWith(QuizPlay Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuizPlayProvider._internal(
        () => create()..isOnlyUnmemorizeds = isOnlyUnmemorizeds,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isOnlyUnmemorizeds: isOnlyUnmemorizeds,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<QuizPlay, QuizPlayState>
      createElement() {
    return _QuizPlayProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuizPlayProvider &&
        other.isOnlyUnmemorizeds == isOnlyUnmemorizeds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isOnlyUnmemorizeds.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin QuizPlayRef on AutoDisposeAsyncNotifierProviderRef<QuizPlayState> {
  /// The parameter `isOnlyUnmemorizeds` of this provider.
  bool get isOnlyUnmemorizeds;
}

class _QuizPlayProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<QuizPlay, QuizPlayState>
    with QuizPlayRef {
  _QuizPlayProviderElement(super.provider);

  @override
  bool get isOnlyUnmemorizeds =>
      (origin as QuizPlayProvider).isOnlyUnmemorizeds;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
