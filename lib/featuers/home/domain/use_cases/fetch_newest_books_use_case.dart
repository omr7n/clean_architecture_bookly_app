import 'package:clean_architecture_bookly_app/core/errors/failures.dart';
import 'package:clean_architecture_bookly_app/featuers/home/domain/entities/book_entities.dart';
import 'package:clean_architecture_bookly_app/featuers/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_cases/use_case.dart';

class FetchNewestBookUseCase extends UseCase<List<BookEntities>, NoParam> {
  FetchNewestBookUseCase({
    required this.homeRepo,
  });
  final HomeRepo homeRepo;

  @override
  Future<Either<Failure, List<BookEntities>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
