import 'package:bloc/bloc.dart';
import 'package:fakng_mobile/features/favorites/data/repositories/favorites_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FavoritesRepository favoritesRepository;

  FavoritesBloc({required this.favoritesRepository}) : super(const _Initial()) {
    on<FavoritesEvent>((event, emit) {});
  }
}
