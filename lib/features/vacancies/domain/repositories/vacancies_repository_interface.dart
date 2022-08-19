import 'package:fakng_mobile/features/vacancies/domain/models/vacancy_model.dart';

abstract class IVacanciesRepository {
  Future<List<VacancyModel>> getVacancies();
}
