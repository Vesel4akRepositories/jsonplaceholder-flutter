import 'package:dartz/dartz.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/use_cases/get_profile_usecase.dart';

abstract class IProfileRepository {
  Future<Either<Failure, UserProfile>> getUserProfile(UserProfileParams params);
}