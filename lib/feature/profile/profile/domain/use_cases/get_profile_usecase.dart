import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/usecase/usecase.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/repositories/i_profile_repository.dart';

@lazySingleton
class GetProfileUseCase extends UseCase<UserProfile, UserProfileParams> {
  final IProfileRepository _profileRepository;

  GetProfileUseCase(this._profileRepository);

  @override
  Future<Either<Failure, UserProfile>> call(UserProfileParams params) async {
    return await _profileRepository.getUserProfile(params);
  }
}

class UserProfileParams {
  final int userId;

  const UserProfileParams(this.userId);
}
