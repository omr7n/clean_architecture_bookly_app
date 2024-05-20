import 'package:clean_architecture_bookly_app/featuers/home/domain/entities/book_entities.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntities>>> fetchNewestBooks();
  Future<Either<Failure, List<BookEntities>>> fetchFeaturedBooks();
  // Future<Either<Failure, List<BookEntities>>> fetchSimilarBooks(
  //     {required String category});
}
