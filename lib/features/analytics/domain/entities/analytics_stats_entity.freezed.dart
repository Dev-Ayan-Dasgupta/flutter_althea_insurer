// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_stats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnalyticsStatsEntity {

 int get totalLogins; int get totalPageViews; int get totalAlertsAcknowledged; int get totalClaimsReviewed; int get totalFraudInvestigations; int get totalReportsGenerated; double get avgSessionDuration; int get totalSearches; DateTime get lastLoginAt; Map<String, int> get featureUsage; Map<String, int> get dailyActivity; List<String> get mostVisitedPages;
/// Create a copy of AnalyticsStatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsStatsEntityCopyWith<AnalyticsStatsEntity> get copyWith => _$AnalyticsStatsEntityCopyWithImpl<AnalyticsStatsEntity>(this as AnalyticsStatsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsStatsEntity&&(identical(other.totalLogins, totalLogins) || other.totalLogins == totalLogins)&&(identical(other.totalPageViews, totalPageViews) || other.totalPageViews == totalPageViews)&&(identical(other.totalAlertsAcknowledged, totalAlertsAcknowledged) || other.totalAlertsAcknowledged == totalAlertsAcknowledged)&&(identical(other.totalClaimsReviewed, totalClaimsReviewed) || other.totalClaimsReviewed == totalClaimsReviewed)&&(identical(other.totalFraudInvestigations, totalFraudInvestigations) || other.totalFraudInvestigations == totalFraudInvestigations)&&(identical(other.totalReportsGenerated, totalReportsGenerated) || other.totalReportsGenerated == totalReportsGenerated)&&(identical(other.avgSessionDuration, avgSessionDuration) || other.avgSessionDuration == avgSessionDuration)&&(identical(other.totalSearches, totalSearches) || other.totalSearches == totalSearches)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&const DeepCollectionEquality().equals(other.featureUsage, featureUsage)&&const DeepCollectionEquality().equals(other.dailyActivity, dailyActivity)&&const DeepCollectionEquality().equals(other.mostVisitedPages, mostVisitedPages));
}


@override
int get hashCode => Object.hash(runtimeType,totalLogins,totalPageViews,totalAlertsAcknowledged,totalClaimsReviewed,totalFraudInvestigations,totalReportsGenerated,avgSessionDuration,totalSearches,lastLoginAt,const DeepCollectionEquality().hash(featureUsage),const DeepCollectionEquality().hash(dailyActivity),const DeepCollectionEquality().hash(mostVisitedPages));

@override
String toString() {
  return 'AnalyticsStatsEntity(totalLogins: $totalLogins, totalPageViews: $totalPageViews, totalAlertsAcknowledged: $totalAlertsAcknowledged, totalClaimsReviewed: $totalClaimsReviewed, totalFraudInvestigations: $totalFraudInvestigations, totalReportsGenerated: $totalReportsGenerated, avgSessionDuration: $avgSessionDuration, totalSearches: $totalSearches, lastLoginAt: $lastLoginAt, featureUsage: $featureUsage, dailyActivity: $dailyActivity, mostVisitedPages: $mostVisitedPages)';
}


}

/// @nodoc
abstract mixin class $AnalyticsStatsEntityCopyWith<$Res>  {
  factory $AnalyticsStatsEntityCopyWith(AnalyticsStatsEntity value, $Res Function(AnalyticsStatsEntity) _then) = _$AnalyticsStatsEntityCopyWithImpl;
@useResult
$Res call({
 int totalLogins, int totalPageViews, int totalAlertsAcknowledged, int totalClaimsReviewed, int totalFraudInvestigations, int totalReportsGenerated, double avgSessionDuration, int totalSearches, DateTime lastLoginAt, Map<String, int> featureUsage, Map<String, int> dailyActivity, List<String> mostVisitedPages
});




}
/// @nodoc
class _$AnalyticsStatsEntityCopyWithImpl<$Res>
    implements $AnalyticsStatsEntityCopyWith<$Res> {
  _$AnalyticsStatsEntityCopyWithImpl(this._self, this._then);

  final AnalyticsStatsEntity _self;
  final $Res Function(AnalyticsStatsEntity) _then;

/// Create a copy of AnalyticsStatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalLogins = null,Object? totalPageViews = null,Object? totalAlertsAcknowledged = null,Object? totalClaimsReviewed = null,Object? totalFraudInvestigations = null,Object? totalReportsGenerated = null,Object? avgSessionDuration = null,Object? totalSearches = null,Object? lastLoginAt = null,Object? featureUsage = null,Object? dailyActivity = null,Object? mostVisitedPages = null,}) {
  return _then(_self.copyWith(
totalLogins: null == totalLogins ? _self.totalLogins : totalLogins // ignore: cast_nullable_to_non_nullable
as int,totalPageViews: null == totalPageViews ? _self.totalPageViews : totalPageViews // ignore: cast_nullable_to_non_nullable
as int,totalAlertsAcknowledged: null == totalAlertsAcknowledged ? _self.totalAlertsAcknowledged : totalAlertsAcknowledged // ignore: cast_nullable_to_non_nullable
as int,totalClaimsReviewed: null == totalClaimsReviewed ? _self.totalClaimsReviewed : totalClaimsReviewed // ignore: cast_nullable_to_non_nullable
as int,totalFraudInvestigations: null == totalFraudInvestigations ? _self.totalFraudInvestigations : totalFraudInvestigations // ignore: cast_nullable_to_non_nullable
as int,totalReportsGenerated: null == totalReportsGenerated ? _self.totalReportsGenerated : totalReportsGenerated // ignore: cast_nullable_to_non_nullable
as int,avgSessionDuration: null == avgSessionDuration ? _self.avgSessionDuration : avgSessionDuration // ignore: cast_nullable_to_non_nullable
as double,totalSearches: null == totalSearches ? _self.totalSearches : totalSearches // ignore: cast_nullable_to_non_nullable
as int,lastLoginAt: null == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime,featureUsage: null == featureUsage ? _self.featureUsage : featureUsage // ignore: cast_nullable_to_non_nullable
as Map<String, int>,dailyActivity: null == dailyActivity ? _self.dailyActivity : dailyActivity // ignore: cast_nullable_to_non_nullable
as Map<String, int>,mostVisitedPages: null == mostVisitedPages ? _self.mostVisitedPages : mostVisitedPages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticsStatsEntity].
extension AnalyticsStatsEntityPatterns on AnalyticsStatsEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsStatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsStatsEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsStatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsStatsEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsStatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsStatsEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalLogins,  int totalPageViews,  int totalAlertsAcknowledged,  int totalClaimsReviewed,  int totalFraudInvestigations,  int totalReportsGenerated,  double avgSessionDuration,  int totalSearches,  DateTime lastLoginAt,  Map<String, int> featureUsage,  Map<String, int> dailyActivity,  List<String> mostVisitedPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsStatsEntity() when $default != null:
return $default(_that.totalLogins,_that.totalPageViews,_that.totalAlertsAcknowledged,_that.totalClaimsReviewed,_that.totalFraudInvestigations,_that.totalReportsGenerated,_that.avgSessionDuration,_that.totalSearches,_that.lastLoginAt,_that.featureUsage,_that.dailyActivity,_that.mostVisitedPages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalLogins,  int totalPageViews,  int totalAlertsAcknowledged,  int totalClaimsReviewed,  int totalFraudInvestigations,  int totalReportsGenerated,  double avgSessionDuration,  int totalSearches,  DateTime lastLoginAt,  Map<String, int> featureUsage,  Map<String, int> dailyActivity,  List<String> mostVisitedPages)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsStatsEntity():
return $default(_that.totalLogins,_that.totalPageViews,_that.totalAlertsAcknowledged,_that.totalClaimsReviewed,_that.totalFraudInvestigations,_that.totalReportsGenerated,_that.avgSessionDuration,_that.totalSearches,_that.lastLoginAt,_that.featureUsage,_that.dailyActivity,_that.mostVisitedPages);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalLogins,  int totalPageViews,  int totalAlertsAcknowledged,  int totalClaimsReviewed,  int totalFraudInvestigations,  int totalReportsGenerated,  double avgSessionDuration,  int totalSearches,  DateTime lastLoginAt,  Map<String, int> featureUsage,  Map<String, int> dailyActivity,  List<String> mostVisitedPages)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsStatsEntity() when $default != null:
return $default(_that.totalLogins,_that.totalPageViews,_that.totalAlertsAcknowledged,_that.totalClaimsReviewed,_that.totalFraudInvestigations,_that.totalReportsGenerated,_that.avgSessionDuration,_that.totalSearches,_that.lastLoginAt,_that.featureUsage,_that.dailyActivity,_that.mostVisitedPages);case _:
  return null;

}
}

}

/// @nodoc


class _AnalyticsStatsEntity implements AnalyticsStatsEntity {
  const _AnalyticsStatsEntity({required this.totalLogins, required this.totalPageViews, required this.totalAlertsAcknowledged, required this.totalClaimsReviewed, required this.totalFraudInvestigations, required this.totalReportsGenerated, required this.avgSessionDuration, required this.totalSearches, required this.lastLoginAt, required final  Map<String, int> featureUsage, required final  Map<String, int> dailyActivity, required final  List<String> mostVisitedPages}): _featureUsage = featureUsage,_dailyActivity = dailyActivity,_mostVisitedPages = mostVisitedPages;
  

@override final  int totalLogins;
@override final  int totalPageViews;
@override final  int totalAlertsAcknowledged;
@override final  int totalClaimsReviewed;
@override final  int totalFraudInvestigations;
@override final  int totalReportsGenerated;
@override final  double avgSessionDuration;
@override final  int totalSearches;
@override final  DateTime lastLoginAt;
 final  Map<String, int> _featureUsage;
@override Map<String, int> get featureUsage {
  if (_featureUsage is EqualUnmodifiableMapView) return _featureUsage;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_featureUsage);
}

 final  Map<String, int> _dailyActivity;
@override Map<String, int> get dailyActivity {
  if (_dailyActivity is EqualUnmodifiableMapView) return _dailyActivity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_dailyActivity);
}

 final  List<String> _mostVisitedPages;
@override List<String> get mostVisitedPages {
  if (_mostVisitedPages is EqualUnmodifiableListView) return _mostVisitedPages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mostVisitedPages);
}


/// Create a copy of AnalyticsStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsStatsEntityCopyWith<_AnalyticsStatsEntity> get copyWith => __$AnalyticsStatsEntityCopyWithImpl<_AnalyticsStatsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsStatsEntity&&(identical(other.totalLogins, totalLogins) || other.totalLogins == totalLogins)&&(identical(other.totalPageViews, totalPageViews) || other.totalPageViews == totalPageViews)&&(identical(other.totalAlertsAcknowledged, totalAlertsAcknowledged) || other.totalAlertsAcknowledged == totalAlertsAcknowledged)&&(identical(other.totalClaimsReviewed, totalClaimsReviewed) || other.totalClaimsReviewed == totalClaimsReviewed)&&(identical(other.totalFraudInvestigations, totalFraudInvestigations) || other.totalFraudInvestigations == totalFraudInvestigations)&&(identical(other.totalReportsGenerated, totalReportsGenerated) || other.totalReportsGenerated == totalReportsGenerated)&&(identical(other.avgSessionDuration, avgSessionDuration) || other.avgSessionDuration == avgSessionDuration)&&(identical(other.totalSearches, totalSearches) || other.totalSearches == totalSearches)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&const DeepCollectionEquality().equals(other._featureUsage, _featureUsage)&&const DeepCollectionEquality().equals(other._dailyActivity, _dailyActivity)&&const DeepCollectionEquality().equals(other._mostVisitedPages, _mostVisitedPages));
}


@override
int get hashCode => Object.hash(runtimeType,totalLogins,totalPageViews,totalAlertsAcknowledged,totalClaimsReviewed,totalFraudInvestigations,totalReportsGenerated,avgSessionDuration,totalSearches,lastLoginAt,const DeepCollectionEquality().hash(_featureUsage),const DeepCollectionEquality().hash(_dailyActivity),const DeepCollectionEquality().hash(_mostVisitedPages));

@override
String toString() {
  return 'AnalyticsStatsEntity(totalLogins: $totalLogins, totalPageViews: $totalPageViews, totalAlertsAcknowledged: $totalAlertsAcknowledged, totalClaimsReviewed: $totalClaimsReviewed, totalFraudInvestigations: $totalFraudInvestigations, totalReportsGenerated: $totalReportsGenerated, avgSessionDuration: $avgSessionDuration, totalSearches: $totalSearches, lastLoginAt: $lastLoginAt, featureUsage: $featureUsage, dailyActivity: $dailyActivity, mostVisitedPages: $mostVisitedPages)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsStatsEntityCopyWith<$Res> implements $AnalyticsStatsEntityCopyWith<$Res> {
  factory _$AnalyticsStatsEntityCopyWith(_AnalyticsStatsEntity value, $Res Function(_AnalyticsStatsEntity) _then) = __$AnalyticsStatsEntityCopyWithImpl;
@override @useResult
$Res call({
 int totalLogins, int totalPageViews, int totalAlertsAcknowledged, int totalClaimsReviewed, int totalFraudInvestigations, int totalReportsGenerated, double avgSessionDuration, int totalSearches, DateTime lastLoginAt, Map<String, int> featureUsage, Map<String, int> dailyActivity, List<String> mostVisitedPages
});




}
/// @nodoc
class __$AnalyticsStatsEntityCopyWithImpl<$Res>
    implements _$AnalyticsStatsEntityCopyWith<$Res> {
  __$AnalyticsStatsEntityCopyWithImpl(this._self, this._then);

  final _AnalyticsStatsEntity _self;
  final $Res Function(_AnalyticsStatsEntity) _then;

/// Create a copy of AnalyticsStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalLogins = null,Object? totalPageViews = null,Object? totalAlertsAcknowledged = null,Object? totalClaimsReviewed = null,Object? totalFraudInvestigations = null,Object? totalReportsGenerated = null,Object? avgSessionDuration = null,Object? totalSearches = null,Object? lastLoginAt = null,Object? featureUsage = null,Object? dailyActivity = null,Object? mostVisitedPages = null,}) {
  return _then(_AnalyticsStatsEntity(
totalLogins: null == totalLogins ? _self.totalLogins : totalLogins // ignore: cast_nullable_to_non_nullable
as int,totalPageViews: null == totalPageViews ? _self.totalPageViews : totalPageViews // ignore: cast_nullable_to_non_nullable
as int,totalAlertsAcknowledged: null == totalAlertsAcknowledged ? _self.totalAlertsAcknowledged : totalAlertsAcknowledged // ignore: cast_nullable_to_non_nullable
as int,totalClaimsReviewed: null == totalClaimsReviewed ? _self.totalClaimsReviewed : totalClaimsReviewed // ignore: cast_nullable_to_non_nullable
as int,totalFraudInvestigations: null == totalFraudInvestigations ? _self.totalFraudInvestigations : totalFraudInvestigations // ignore: cast_nullable_to_non_nullable
as int,totalReportsGenerated: null == totalReportsGenerated ? _self.totalReportsGenerated : totalReportsGenerated // ignore: cast_nullable_to_non_nullable
as int,avgSessionDuration: null == avgSessionDuration ? _self.avgSessionDuration : avgSessionDuration // ignore: cast_nullable_to_non_nullable
as double,totalSearches: null == totalSearches ? _self.totalSearches : totalSearches // ignore: cast_nullable_to_non_nullable
as int,lastLoginAt: null == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime,featureUsage: null == featureUsage ? _self._featureUsage : featureUsage // ignore: cast_nullable_to_non_nullable
as Map<String, int>,dailyActivity: null == dailyActivity ? _self._dailyActivity : dailyActivity // ignore: cast_nullable_to_non_nullable
as Map<String, int>,mostVisitedPages: null == mostVisitedPages ? _self._mostVisitedPages : mostVisitedPages // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
