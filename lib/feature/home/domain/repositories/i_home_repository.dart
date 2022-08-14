import 'package:dartz/dartz.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/feature/home/domain/entities/user.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<User>>> getUsers();
}
