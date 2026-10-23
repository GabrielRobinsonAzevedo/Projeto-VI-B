// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Instância única do banco, injetada via Riverpod em todos os repositórios.

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

/// Instância única do banco, injetada via Riverpod em todos os repositórios.

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  /// Instância única do banco, injetada via Riverpod em todos os repositórios.
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'59cce38d45eeaba199eddd097d8e149d66f9f3e1';

/// Contador que muda a cada escrita no banco. ViewModels que fazem
/// `ref.watch(dbRevisionProvider)` são recalculados automaticamente.

@ProviderFor(dbRevision)
final dbRevisionProvider = DbRevisionProvider._();

/// Contador que muda a cada escrita no banco. ViewModels que fazem
/// `ref.watch(dbRevisionProvider)` são recalculados automaticamente.

final class DbRevisionProvider
    extends $FunctionalProvider<AsyncValue<int>, int, Stream<int>>
    with $FutureModifier<int>, $StreamProvider<int> {
  /// Contador que muda a cada escrita no banco. ViewModels que fazem
  /// `ref.watch(dbRevisionProvider)` são recalculados automaticamente.
  DbRevisionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dbRevisionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dbRevisionHash();

  @$internal
  @override
  $StreamProviderElement<int> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<int> create(Ref ref) {
    return dbRevision(ref);
  }
}

String _$dbRevisionHash() => r'71a3b261a1c65084961022fa8deee9b6eb395fd7';
