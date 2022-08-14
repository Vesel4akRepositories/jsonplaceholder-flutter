import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/feature/home/domain/entities/user.dart';

import '../../domain/use_cases/get_users_usercase.dart';

part 'home_bloc.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.userSelect({required final String user}) =
      _UserSelectEvent;

  const factory HomeEvent.fetch() = _UsersFetchEvent;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = InitialHomeState;

  const factory HomeState.loading() = HomeLoadingState;

  const factory HomeState.loaded({required List<User> users}) = HomeLoadedState;

  const factory HomeState.error({
    @Default('Произошла ошибка') String? message,
  }) = HomeErrorState;
}

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUsersUseCase _getUsersUseCase;

  HomeBloc(this._getUsersUseCase) : super(const HomeState.initial()) {
    on<_UsersFetchEvent>((event, emitter) => _userFetch(event, emitter));
  }

  Future<void> _userFetch(
      _UsersFetchEvent event, Emitter<HomeState> emitter) async {
    emitter(const HomeState.loading());
    final either = await _getUsersUseCase('');
    return either.fold(
        (l) => emitter(HomeState.error(message: _mapFailureToMessage(l))),
        (r) => emitter(HomeState.loaded(users: r)));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server Error!';
      case CacheFailure:
        return 'Cache Error!';
      default:
        return 'Unexpected error';
    }
  }
}
