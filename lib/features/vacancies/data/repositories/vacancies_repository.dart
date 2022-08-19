import 'package:fakng_mobile/features/vacancies/domain/models/vacancy_model.dart';
import 'package:fakng_mobile/features/vacancies/domain/repositories/vacancies_repository_interface.dart';

class VacanciesRepository implements IVacanciesRepository {
  const VacanciesRepository();

  @override
  Future<List<VacancyModel>> getVacancies() async {
    return [];
  }
}
