
import 'package:clean_architecture_bookly_app/core/errors/failures.dart';
import 'package:clean_architecture_bookly_app/featuers/home/data/models/book_model/item.dart';
import 'package:clean_architecture_bookly_app/featuers/home/domain/repos/home_repo.dart';
import 'package:clean_architecture_bookly_app/featuers/home/domain/entities/book_entities.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/manger/similar_boook_cubit/similar_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    // emit(SimilarBooksLoading());
    // Either<Failure, List<BookEntities>> result =
    //     await homeRepo.fetchSimilarBooks(category: category);
    // result.fold((failure) {
    //   emit(SimilarBooksFailure(errorMessage: failure.toString()));
    // }, (books) {
    //   emit(SimilarBooksSuccess(books: books));
    // });
  }
}
