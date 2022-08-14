import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/use_cases/get_profile_usecase.dart';

part 'profile_bloc.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetch({required final int userId}) =
      _ProfileFetchEvent;
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitialState;

  const factory ProfileState.loading() = ProfileLoadingState;

  const factory ProfileState.loaded({required final UserProfile userProfile}) =
      ProfileLoadedState;

  const factory ProfileState.error({String? message}) = ProfileErrorState;
}

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase _getProfileUseCase;

  ProfileBloc(this._getProfileUseCase) : super(const ProfileState.initial()) {
    on<_ProfileFetchEvent>(
        (event, emitter) => _fetchUserProfile(event, emitter));
  }

  Future<void> _fetchUserProfile(
      _ProfileFetchEvent event, Emitter<ProfileState> emitter) async {
    emitter(const ProfileState.loading());
    final either = await _getProfileUseCase(UserProfileParams(event.userId));
    return either.fold(
        (l) => emitter(ProfileState.error(message: _mapFailureToMessage(l))),
        (r) => emitter(ProfileState.loaded(userProfile: r)));
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
