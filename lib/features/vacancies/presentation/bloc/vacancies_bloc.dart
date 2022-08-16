import 'package:bloc/bloc.dart';
import 'package:fakng_mobile/features/vacancies/data/repository/vacancies_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancies_event.dart';
part 'vacancies_state.dart';
part 'vacancies_bloc.freezed.dart';

class VacanciesBloc extends Bloc<VacanciesEvent, VacanciesState> {
  final VacanciesRepository vacanciesRepository;

  VacanciesBloc({
    required this.vacanciesRepository,
  }) : super(const _Initial()) {
    on<VacanciesEvent>((event, emit) {});
  }
}
