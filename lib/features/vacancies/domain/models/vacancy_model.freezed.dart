// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vacancy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VacancyModel _$VacancyModelFromJson(Map<String, dynamic> json) {
  return _VacancyModel.fromJson(json);
}

/// @nodoc
mixin _$VacancyModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyModelCopyWith<$Res> {
  factory $VacancyModelCopyWith(
          VacancyModel value, $Res Function(VacancyModel) then) =
      _$VacancyModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$VacancyModelCopyWithImpl<$Res> implements $VacancyModelCopyWith<$Res> {
  _$VacancyModelCopyWithImpl(this._value, this._then);

  final VacancyModel _value;
  // ignore: unused_field
  final $Res Function(VacancyModel) _then;
}

/// @nodoc
abstract class _$$_VacancyModelCopyWith<$Res> {
  factory _$$_VacancyModelCopyWith(
          _$_VacancyModel value, $Res Function(_$_VacancyModel) then) =
      __$$_VacancyModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VacancyModelCopyWithImpl<$Res>
    extends _$VacancyModelCopyWithImpl<$Res>
    implements _$$_VacancyModelCopyWith<$Res> {
  __$$_VacancyModelCopyWithImpl(
      _$_VacancyModel _value, $Res Function(_$_VacancyModel) _then)
      : super(_value, (v) => _then(v as _$_VacancyModel));

  @override
  _$_VacancyModel get _value => super._value as _$_VacancyModel;
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_VacancyModel implements _VacancyModel {
  _$_VacancyModel();

  factory _$_VacancyModel.fromJson(Map<String, dynamic> json) =>
      _$$_VacancyModelFromJson(json);

  @override
  String toString() {
    return 'VacancyModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VacancyModel);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_VacancyModelToJson(
      this,
    );
  }
}

abstract class _VacancyModel implements VacancyModel {
  factory _VacancyModel() = _$_VacancyModel;

  factory _VacancyModel.fromJson(Map<String, dynamic> json) =
      _$_VacancyModel.fromJson;
}
