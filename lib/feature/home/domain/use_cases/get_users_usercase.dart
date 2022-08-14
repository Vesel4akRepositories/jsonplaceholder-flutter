import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/usecase/usecase.dart';
import 'package:jsonplaceholder_bloc/feature/home/domain/entities/user.dart';
import 'package:jsonplaceholder_bloc/feature/home/domain/repositories/i_home_repository.dart';

@lazySingleton
class GetUsersUseCase implements UseCase<List<User>, void> {
  final IHomeRepository _repository;

  GetUsersUseCase(this._repository);

  @override
  Future<Either<Failure, List<User>>> call(_) async {
    return await _repository.getUsers();
  }
}
