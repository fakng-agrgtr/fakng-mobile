import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(const _Initial()) {
    on<FavoritesEvent>((event, emit) {});
  }
}
