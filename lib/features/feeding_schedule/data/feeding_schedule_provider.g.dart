// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeding_schedule_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedingScheduleDatabaseHash() =>
    r'b98dc7e7381454817d322dd8771cdc925f0a7590';

/// See also [feedingScheduleDatabase].
@ProviderFor(feedingScheduleDatabase)
final feedingScheduleDatabaseProvider =
    AutoDisposeProvider<FeedingScheduleDatabase>.internal(
  feedingScheduleDatabase,
  name: r'feedingScheduleDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$feedingScheduleDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FeedingScheduleDatabaseRef
    = AutoDisposeProviderRef<FeedingScheduleDatabase>;
String _$feedingschedulesHash() => r'578cc99cc43ba40c81499e8f5443bad9d812bcb5';

/// See also [feedingschedules].
@ProviderFor(feedingschedules)
final feedingschedulesProvider =
    AutoDisposeStreamProvider<List<FeedingScheduleData>>.internal(
  feedingschedules,
  name: r'feedingschedulesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$feedingschedulesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FeedingschedulesRef
    = AutoDisposeStreamProviderRef<List<FeedingScheduleData>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
