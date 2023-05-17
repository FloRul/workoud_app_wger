// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiHash() => r'9aaac9fabe16439c612a0fbd65e59812678b2e58';

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

typedef ApiRef = AutoDisposeProviderRef<Dio>;

/// See also [api].
@ProviderFor(api)
const apiProvider = ApiFamily();

/// See also [api].
class ApiFamily extends Family<Dio> {
  /// See also [api].
  const ApiFamily();

  /// See also [api].
  ApiProvider call({
    EnvType env = EnvType.dev,
  }) {
    return ApiProvider(
      env: env,
    );
  }

  @override
  ApiProvider getProviderOverride(
    covariant ApiProvider provider,
  ) {
    return call(
      env: provider.env,
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
  String? get name => r'apiProvider';
}

/// See also [api].
class ApiProvider extends AutoDisposeProvider<Dio> {
  /// See also [api].
  ApiProvider({
    this.env = EnvType.dev,
  }) : super.internal(
          (ref) => api(
            ref,
            env: env,
          ),
          from: apiProvider,
          name: r'apiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$apiHash,
          dependencies: ApiFamily._dependencies,
          allTransitiveDependencies: ApiFamily._allTransitiveDependencies,
        );

  final EnvType env;

  @override
  bool operator ==(Object other) {
    return other is ApiProvider && other.env == env;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, env.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
