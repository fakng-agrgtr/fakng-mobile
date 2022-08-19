import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'vacancy_model.g.dart';
part 'vacancy_model.freezed.dart';

@freezed
class VacancyModel with _$VacancyModel {
  @HiveType(typeId: 0)
  factory VacancyModel() = _VacancyModel;

  factory VacancyModel.fromJson(Map<String, Object?> json) =>
      _$VacancyModelFromJson(json);
}
