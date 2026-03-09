// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_preference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationPreferenceModel {

 String get userId; bool get emailEnabled; bool get pushEnabled; bool get smsEnabled; bool get inAppEnabled; bool get emergencyAlerts; bool get fraudAlerts; bool get safetyAlerts; bool get medicationAlerts; bool get riskAlerts; bool get systemAlerts; bool get claimsAlerts; bool get networkAlerts; bool get dailySummary; bool get weeklySummary; bool get monthlySummary; bool get quietHoursEnabled; String? get quietHoursStart; String? get quietHoursEnd; bool get soundEnabled; bool get vibrationEnabled; bool get ledEnabled; int get notificationPriority; List<String> get mutedKeywords; List<String> get mutedProviders;
/// Create a copy of NotificationPreferenceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPreferenceModelCopyWith<NotificationPreferenceModel> get copyWith => _$NotificationPreferenceModelCopyWithImpl<NotificationPreferenceModel>(this as NotificationPreferenceModel, _$identity);

  /// Serializes this NotificationPreferenceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPreferenceModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.smsEnabled, smsEnabled) || other.smsEnabled == smsEnabled)&&(identical(other.inAppEnabled, inAppEnabled) || other.inAppEnabled == inAppEnabled)&&(identical(other.emergencyAlerts, emergencyAlerts) || other.emergencyAlerts == emergencyAlerts)&&(identical(other.fraudAlerts, fraudAlerts) || other.fraudAlerts == fraudAlerts)&&(identical(other.safetyAlerts, safetyAlerts) || other.safetyAlerts == safetyAlerts)&&(identical(other.medicationAlerts, medicationAlerts) || other.medicationAlerts == medicationAlerts)&&(identical(other.riskAlerts, riskAlerts) || other.riskAlerts == riskAlerts)&&(identical(other.systemAlerts, systemAlerts) || other.systemAlerts == systemAlerts)&&(identical(other.claimsAlerts, claimsAlerts) || other.claimsAlerts == claimsAlerts)&&(identical(other.networkAlerts, networkAlerts) || other.networkAlerts == networkAlerts)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary)&&(identical(other.weeklySummary, weeklySummary) || other.weeklySummary == weeklySummary)&&(identical(other.monthlySummary, monthlySummary) || other.monthlySummary == monthlySummary)&&(identical(other.quietHoursEnabled, quietHoursEnabled) || other.quietHoursEnabled == quietHoursEnabled)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.vibrationEnabled, vibrationEnabled) || other.vibrationEnabled == vibrationEnabled)&&(identical(other.ledEnabled, ledEnabled) || other.ledEnabled == ledEnabled)&&(identical(other.notificationPriority, notificationPriority) || other.notificationPriority == notificationPriority)&&const DeepCollectionEquality().equals(other.mutedKeywords, mutedKeywords)&&const DeepCollectionEquality().equals(other.mutedProviders, mutedProviders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,emailEnabled,pushEnabled,smsEnabled,inAppEnabled,emergencyAlerts,fraudAlerts,safetyAlerts,medicationAlerts,riskAlerts,systemAlerts,claimsAlerts,networkAlerts,dailySummary,weeklySummary,monthlySummary,quietHoursEnabled,quietHoursStart,quietHoursEnd,soundEnabled,vibrationEnabled,ledEnabled,notificationPriority,const DeepCollectionEquality().hash(mutedKeywords),const DeepCollectionEquality().hash(mutedProviders)]);

@override
String toString() {
  return 'NotificationPreferenceModel(userId: $userId, emailEnabled: $emailEnabled, pushEnabled: $pushEnabled, smsEnabled: $smsEnabled, inAppEnabled: $inAppEnabled, emergencyAlerts: $emergencyAlerts, fraudAlerts: $fraudAlerts, safetyAlerts: $safetyAlerts, medicationAlerts: $medicationAlerts, riskAlerts: $riskAlerts, systemAlerts: $systemAlerts, claimsAlerts: $claimsAlerts, networkAlerts: $networkAlerts, dailySummary: $dailySummary, weeklySummary: $weeklySummary, monthlySummary: $monthlySummary, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, soundEnabled: $soundEnabled, vibrationEnabled: $vibrationEnabled, ledEnabled: $ledEnabled, notificationPriority: $notificationPriority, mutedKeywords: $mutedKeywords, mutedProviders: $mutedProviders)';
}


}

/// @nodoc
abstract mixin class $NotificationPreferenceModelCopyWith<$Res>  {
  factory $NotificationPreferenceModelCopyWith(NotificationPreferenceModel value, $Res Function(NotificationPreferenceModel) _then) = _$NotificationPreferenceModelCopyWithImpl;
@useResult
$Res call({
 String userId, bool emailEnabled, bool pushEnabled, bool smsEnabled, bool inAppEnabled, bool emergencyAlerts, bool fraudAlerts, bool safetyAlerts, bool medicationAlerts, bool riskAlerts, bool systemAlerts, bool claimsAlerts, bool networkAlerts, bool dailySummary, bool weeklySummary, bool monthlySummary, bool quietHoursEnabled, String? quietHoursStart, String? quietHoursEnd, bool soundEnabled, bool vibrationEnabled, bool ledEnabled, int notificationPriority, List<String> mutedKeywords, List<String> mutedProviders
});




}
/// @nodoc
class _$NotificationPreferenceModelCopyWithImpl<$Res>
    implements $NotificationPreferenceModelCopyWith<$Res> {
  _$NotificationPreferenceModelCopyWithImpl(this._self, this._then);

  final NotificationPreferenceModel _self;
  final $Res Function(NotificationPreferenceModel) _then;

/// Create a copy of NotificationPreferenceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? emailEnabled = null,Object? pushEnabled = null,Object? smsEnabled = null,Object? inAppEnabled = null,Object? emergencyAlerts = null,Object? fraudAlerts = null,Object? safetyAlerts = null,Object? medicationAlerts = null,Object? riskAlerts = null,Object? systemAlerts = null,Object? claimsAlerts = null,Object? networkAlerts = null,Object? dailySummary = null,Object? weeklySummary = null,Object? monthlySummary = null,Object? quietHoursEnabled = null,Object? quietHoursStart = freezed,Object? quietHoursEnd = freezed,Object? soundEnabled = null,Object? vibrationEnabled = null,Object? ledEnabled = null,Object? notificationPriority = null,Object? mutedKeywords = null,Object? mutedProviders = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,smsEnabled: null == smsEnabled ? _self.smsEnabled : smsEnabled // ignore: cast_nullable_to_non_nullable
as bool,inAppEnabled: null == inAppEnabled ? _self.inAppEnabled : inAppEnabled // ignore: cast_nullable_to_non_nullable
as bool,emergencyAlerts: null == emergencyAlerts ? _self.emergencyAlerts : emergencyAlerts // ignore: cast_nullable_to_non_nullable
as bool,fraudAlerts: null == fraudAlerts ? _self.fraudAlerts : fraudAlerts // ignore: cast_nullable_to_non_nullable
as bool,safetyAlerts: null == safetyAlerts ? _self.safetyAlerts : safetyAlerts // ignore: cast_nullable_to_non_nullable
as bool,medicationAlerts: null == medicationAlerts ? _self.medicationAlerts : medicationAlerts // ignore: cast_nullable_to_non_nullable
as bool,riskAlerts: null == riskAlerts ? _self.riskAlerts : riskAlerts // ignore: cast_nullable_to_non_nullable
as bool,systemAlerts: null == systemAlerts ? _self.systemAlerts : systemAlerts // ignore: cast_nullable_to_non_nullable
as bool,claimsAlerts: null == claimsAlerts ? _self.claimsAlerts : claimsAlerts // ignore: cast_nullable_to_non_nullable
as bool,networkAlerts: null == networkAlerts ? _self.networkAlerts : networkAlerts // ignore: cast_nullable_to_non_nullable
as bool,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as bool,weeklySummary: null == weeklySummary ? _self.weeklySummary : weeklySummary // ignore: cast_nullable_to_non_nullable
as bool,monthlySummary: null == monthlySummary ? _self.monthlySummary : monthlySummary // ignore: cast_nullable_to_non_nullable
as bool,quietHoursEnabled: null == quietHoursEnabled ? _self.quietHoursEnabled : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: freezed == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnd: freezed == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,vibrationEnabled: null == vibrationEnabled ? _self.vibrationEnabled : vibrationEnabled // ignore: cast_nullable_to_non_nullable
as bool,ledEnabled: null == ledEnabled ? _self.ledEnabled : ledEnabled // ignore: cast_nullable_to_non_nullable
as bool,notificationPriority: null == notificationPriority ? _self.notificationPriority : notificationPriority // ignore: cast_nullable_to_non_nullable
as int,mutedKeywords: null == mutedKeywords ? _self.mutedKeywords : mutedKeywords // ignore: cast_nullable_to_non_nullable
as List<String>,mutedProviders: null == mutedProviders ? _self.mutedProviders : mutedProviders // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPreferenceModel].
extension NotificationPreferenceModelPatterns on NotificationPreferenceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPreferenceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPreferenceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPreferenceModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferenceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPreferenceModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferenceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  bool emailEnabled,  bool pushEnabled,  bool smsEnabled,  bool inAppEnabled,  bool emergencyAlerts,  bool fraudAlerts,  bool safetyAlerts,  bool medicationAlerts,  bool riskAlerts,  bool systemAlerts,  bool claimsAlerts,  bool networkAlerts,  bool dailySummary,  bool weeklySummary,  bool monthlySummary,  bool quietHoursEnabled,  String? quietHoursStart,  String? quietHoursEnd,  bool soundEnabled,  bool vibrationEnabled,  bool ledEnabled,  int notificationPriority,  List<String> mutedKeywords,  List<String> mutedProviders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPreferenceModel() when $default != null:
return $default(_that.userId,_that.emailEnabled,_that.pushEnabled,_that.smsEnabled,_that.inAppEnabled,_that.emergencyAlerts,_that.fraudAlerts,_that.safetyAlerts,_that.medicationAlerts,_that.riskAlerts,_that.systemAlerts,_that.claimsAlerts,_that.networkAlerts,_that.dailySummary,_that.weeklySummary,_that.monthlySummary,_that.quietHoursEnabled,_that.quietHoursStart,_that.quietHoursEnd,_that.soundEnabled,_that.vibrationEnabled,_that.ledEnabled,_that.notificationPriority,_that.mutedKeywords,_that.mutedProviders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  bool emailEnabled,  bool pushEnabled,  bool smsEnabled,  bool inAppEnabled,  bool emergencyAlerts,  bool fraudAlerts,  bool safetyAlerts,  bool medicationAlerts,  bool riskAlerts,  bool systemAlerts,  bool claimsAlerts,  bool networkAlerts,  bool dailySummary,  bool weeklySummary,  bool monthlySummary,  bool quietHoursEnabled,  String? quietHoursStart,  String? quietHoursEnd,  bool soundEnabled,  bool vibrationEnabled,  bool ledEnabled,  int notificationPriority,  List<String> mutedKeywords,  List<String> mutedProviders)  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferenceModel():
return $default(_that.userId,_that.emailEnabled,_that.pushEnabled,_that.smsEnabled,_that.inAppEnabled,_that.emergencyAlerts,_that.fraudAlerts,_that.safetyAlerts,_that.medicationAlerts,_that.riskAlerts,_that.systemAlerts,_that.claimsAlerts,_that.networkAlerts,_that.dailySummary,_that.weeklySummary,_that.monthlySummary,_that.quietHoursEnabled,_that.quietHoursStart,_that.quietHoursEnd,_that.soundEnabled,_that.vibrationEnabled,_that.ledEnabled,_that.notificationPriority,_that.mutedKeywords,_that.mutedProviders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  bool emailEnabled,  bool pushEnabled,  bool smsEnabled,  bool inAppEnabled,  bool emergencyAlerts,  bool fraudAlerts,  bool safetyAlerts,  bool medicationAlerts,  bool riskAlerts,  bool systemAlerts,  bool claimsAlerts,  bool networkAlerts,  bool dailySummary,  bool weeklySummary,  bool monthlySummary,  bool quietHoursEnabled,  String? quietHoursStart,  String? quietHoursEnd,  bool soundEnabled,  bool vibrationEnabled,  bool ledEnabled,  int notificationPriority,  List<String> mutedKeywords,  List<String> mutedProviders)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferenceModel() when $default != null:
return $default(_that.userId,_that.emailEnabled,_that.pushEnabled,_that.smsEnabled,_that.inAppEnabled,_that.emergencyAlerts,_that.fraudAlerts,_that.safetyAlerts,_that.medicationAlerts,_that.riskAlerts,_that.systemAlerts,_that.claimsAlerts,_that.networkAlerts,_that.dailySummary,_that.weeklySummary,_that.monthlySummary,_that.quietHoursEnabled,_that.quietHoursStart,_that.quietHoursEnd,_that.soundEnabled,_that.vibrationEnabled,_that.ledEnabled,_that.notificationPriority,_that.mutedKeywords,_that.mutedProviders);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPreferenceModel extends NotificationPreferenceModel {
  const _NotificationPreferenceModel({required this.userId, required this.emailEnabled, required this.pushEnabled, required this.smsEnabled, required this.inAppEnabled, required this.emergencyAlerts, required this.fraudAlerts, required this.safetyAlerts, required this.medicationAlerts, required this.riskAlerts, required this.systemAlerts, required this.claimsAlerts, required this.networkAlerts, required this.dailySummary, required this.weeklySummary, required this.monthlySummary, required this.quietHoursEnabled, this.quietHoursStart, this.quietHoursEnd, required this.soundEnabled, required this.vibrationEnabled, required this.ledEnabled, required this.notificationPriority, required final  List<String> mutedKeywords, required final  List<String> mutedProviders}): _mutedKeywords = mutedKeywords,_mutedProviders = mutedProviders,super._();
  factory _NotificationPreferenceModel.fromJson(Map<String, dynamic> json) => _$NotificationPreferenceModelFromJson(json);

@override final  String userId;
@override final  bool emailEnabled;
@override final  bool pushEnabled;
@override final  bool smsEnabled;
@override final  bool inAppEnabled;
@override final  bool emergencyAlerts;
@override final  bool fraudAlerts;
@override final  bool safetyAlerts;
@override final  bool medicationAlerts;
@override final  bool riskAlerts;
@override final  bool systemAlerts;
@override final  bool claimsAlerts;
@override final  bool networkAlerts;
@override final  bool dailySummary;
@override final  bool weeklySummary;
@override final  bool monthlySummary;
@override final  bool quietHoursEnabled;
@override final  String? quietHoursStart;
@override final  String? quietHoursEnd;
@override final  bool soundEnabled;
@override final  bool vibrationEnabled;
@override final  bool ledEnabled;
@override final  int notificationPriority;
 final  List<String> _mutedKeywords;
@override List<String> get mutedKeywords {
  if (_mutedKeywords is EqualUnmodifiableListView) return _mutedKeywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutedKeywords);
}

 final  List<String> _mutedProviders;
@override List<String> get mutedProviders {
  if (_mutedProviders is EqualUnmodifiableListView) return _mutedProviders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutedProviders);
}


/// Create a copy of NotificationPreferenceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPreferenceModelCopyWith<_NotificationPreferenceModel> get copyWith => __$NotificationPreferenceModelCopyWithImpl<_NotificationPreferenceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPreferenceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPreferenceModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.emailEnabled, emailEnabled) || other.emailEnabled == emailEnabled)&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.smsEnabled, smsEnabled) || other.smsEnabled == smsEnabled)&&(identical(other.inAppEnabled, inAppEnabled) || other.inAppEnabled == inAppEnabled)&&(identical(other.emergencyAlerts, emergencyAlerts) || other.emergencyAlerts == emergencyAlerts)&&(identical(other.fraudAlerts, fraudAlerts) || other.fraudAlerts == fraudAlerts)&&(identical(other.safetyAlerts, safetyAlerts) || other.safetyAlerts == safetyAlerts)&&(identical(other.medicationAlerts, medicationAlerts) || other.medicationAlerts == medicationAlerts)&&(identical(other.riskAlerts, riskAlerts) || other.riskAlerts == riskAlerts)&&(identical(other.systemAlerts, systemAlerts) || other.systemAlerts == systemAlerts)&&(identical(other.claimsAlerts, claimsAlerts) || other.claimsAlerts == claimsAlerts)&&(identical(other.networkAlerts, networkAlerts) || other.networkAlerts == networkAlerts)&&(identical(other.dailySummary, dailySummary) || other.dailySummary == dailySummary)&&(identical(other.weeklySummary, weeklySummary) || other.weeklySummary == weeklySummary)&&(identical(other.monthlySummary, monthlySummary) || other.monthlySummary == monthlySummary)&&(identical(other.quietHoursEnabled, quietHoursEnabled) || other.quietHoursEnabled == quietHoursEnabled)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.soundEnabled, soundEnabled) || other.soundEnabled == soundEnabled)&&(identical(other.vibrationEnabled, vibrationEnabled) || other.vibrationEnabled == vibrationEnabled)&&(identical(other.ledEnabled, ledEnabled) || other.ledEnabled == ledEnabled)&&(identical(other.notificationPriority, notificationPriority) || other.notificationPriority == notificationPriority)&&const DeepCollectionEquality().equals(other._mutedKeywords, _mutedKeywords)&&const DeepCollectionEquality().equals(other._mutedProviders, _mutedProviders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,emailEnabled,pushEnabled,smsEnabled,inAppEnabled,emergencyAlerts,fraudAlerts,safetyAlerts,medicationAlerts,riskAlerts,systemAlerts,claimsAlerts,networkAlerts,dailySummary,weeklySummary,monthlySummary,quietHoursEnabled,quietHoursStart,quietHoursEnd,soundEnabled,vibrationEnabled,ledEnabled,notificationPriority,const DeepCollectionEquality().hash(_mutedKeywords),const DeepCollectionEquality().hash(_mutedProviders)]);

@override
String toString() {
  return 'NotificationPreferenceModel(userId: $userId, emailEnabled: $emailEnabled, pushEnabled: $pushEnabled, smsEnabled: $smsEnabled, inAppEnabled: $inAppEnabled, emergencyAlerts: $emergencyAlerts, fraudAlerts: $fraudAlerts, safetyAlerts: $safetyAlerts, medicationAlerts: $medicationAlerts, riskAlerts: $riskAlerts, systemAlerts: $systemAlerts, claimsAlerts: $claimsAlerts, networkAlerts: $networkAlerts, dailySummary: $dailySummary, weeklySummary: $weeklySummary, monthlySummary: $monthlySummary, quietHoursEnabled: $quietHoursEnabled, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, soundEnabled: $soundEnabled, vibrationEnabled: $vibrationEnabled, ledEnabled: $ledEnabled, notificationPriority: $notificationPriority, mutedKeywords: $mutedKeywords, mutedProviders: $mutedProviders)';
}


}

/// @nodoc
abstract mixin class _$NotificationPreferenceModelCopyWith<$Res> implements $NotificationPreferenceModelCopyWith<$Res> {
  factory _$NotificationPreferenceModelCopyWith(_NotificationPreferenceModel value, $Res Function(_NotificationPreferenceModel) _then) = __$NotificationPreferenceModelCopyWithImpl;
@override @useResult
$Res call({
 String userId, bool emailEnabled, bool pushEnabled, bool smsEnabled, bool inAppEnabled, bool emergencyAlerts, bool fraudAlerts, bool safetyAlerts, bool medicationAlerts, bool riskAlerts, bool systemAlerts, bool claimsAlerts, bool networkAlerts, bool dailySummary, bool weeklySummary, bool monthlySummary, bool quietHoursEnabled, String? quietHoursStart, String? quietHoursEnd, bool soundEnabled, bool vibrationEnabled, bool ledEnabled, int notificationPriority, List<String> mutedKeywords, List<String> mutedProviders
});




}
/// @nodoc
class __$NotificationPreferenceModelCopyWithImpl<$Res>
    implements _$NotificationPreferenceModelCopyWith<$Res> {
  __$NotificationPreferenceModelCopyWithImpl(this._self, this._then);

  final _NotificationPreferenceModel _self;
  final $Res Function(_NotificationPreferenceModel) _then;

/// Create a copy of NotificationPreferenceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? emailEnabled = null,Object? pushEnabled = null,Object? smsEnabled = null,Object? inAppEnabled = null,Object? emergencyAlerts = null,Object? fraudAlerts = null,Object? safetyAlerts = null,Object? medicationAlerts = null,Object? riskAlerts = null,Object? systemAlerts = null,Object? claimsAlerts = null,Object? networkAlerts = null,Object? dailySummary = null,Object? weeklySummary = null,Object? monthlySummary = null,Object? quietHoursEnabled = null,Object? quietHoursStart = freezed,Object? quietHoursEnd = freezed,Object? soundEnabled = null,Object? vibrationEnabled = null,Object? ledEnabled = null,Object? notificationPriority = null,Object? mutedKeywords = null,Object? mutedProviders = null,}) {
  return _then(_NotificationPreferenceModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,emailEnabled: null == emailEnabled ? _self.emailEnabled : emailEnabled // ignore: cast_nullable_to_non_nullable
as bool,pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,smsEnabled: null == smsEnabled ? _self.smsEnabled : smsEnabled // ignore: cast_nullable_to_non_nullable
as bool,inAppEnabled: null == inAppEnabled ? _self.inAppEnabled : inAppEnabled // ignore: cast_nullable_to_non_nullable
as bool,emergencyAlerts: null == emergencyAlerts ? _self.emergencyAlerts : emergencyAlerts // ignore: cast_nullable_to_non_nullable
as bool,fraudAlerts: null == fraudAlerts ? _self.fraudAlerts : fraudAlerts // ignore: cast_nullable_to_non_nullable
as bool,safetyAlerts: null == safetyAlerts ? _self.safetyAlerts : safetyAlerts // ignore: cast_nullable_to_non_nullable
as bool,medicationAlerts: null == medicationAlerts ? _self.medicationAlerts : medicationAlerts // ignore: cast_nullable_to_non_nullable
as bool,riskAlerts: null == riskAlerts ? _self.riskAlerts : riskAlerts // ignore: cast_nullable_to_non_nullable
as bool,systemAlerts: null == systemAlerts ? _self.systemAlerts : systemAlerts // ignore: cast_nullable_to_non_nullable
as bool,claimsAlerts: null == claimsAlerts ? _self.claimsAlerts : claimsAlerts // ignore: cast_nullable_to_non_nullable
as bool,networkAlerts: null == networkAlerts ? _self.networkAlerts : networkAlerts // ignore: cast_nullable_to_non_nullable
as bool,dailySummary: null == dailySummary ? _self.dailySummary : dailySummary // ignore: cast_nullable_to_non_nullable
as bool,weeklySummary: null == weeklySummary ? _self.weeklySummary : weeklySummary // ignore: cast_nullable_to_non_nullable
as bool,monthlySummary: null == monthlySummary ? _self.monthlySummary : monthlySummary // ignore: cast_nullable_to_non_nullable
as bool,quietHoursEnabled: null == quietHoursEnabled ? _self.quietHoursEnabled : quietHoursEnabled // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: freezed == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as String?,quietHoursEnd: freezed == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,soundEnabled: null == soundEnabled ? _self.soundEnabled : soundEnabled // ignore: cast_nullable_to_non_nullable
as bool,vibrationEnabled: null == vibrationEnabled ? _self.vibrationEnabled : vibrationEnabled // ignore: cast_nullable_to_non_nullable
as bool,ledEnabled: null == ledEnabled ? _self.ledEnabled : ledEnabled // ignore: cast_nullable_to_non_nullable
as bool,notificationPriority: null == notificationPriority ? _self.notificationPriority : notificationPriority // ignore: cast_nullable_to_non_nullable
as int,mutedKeywords: null == mutedKeywords ? _self._mutedKeywords : mutedKeywords // ignore: cast_nullable_to_non_nullable
as List<String>,mutedProviders: null == mutedProviders ? _self._mutedProviders : mutedProviders // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
