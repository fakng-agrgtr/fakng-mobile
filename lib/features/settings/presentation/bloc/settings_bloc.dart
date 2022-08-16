import 'package:bloc/bloc.dart';
import 'package:fakng_mobile/features/settings/domain/repositories/settings_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsRepository settingsRepository;

  SettingsBloc({
    required this.settingsRepository,
  }) : super(_Initial()) {
    on<SettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
