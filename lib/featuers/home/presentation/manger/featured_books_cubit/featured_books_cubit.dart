
import 'package:clean_architecture_bookly_app/core/errors/failures.dart';
import 'package:clean_architecture_bookly_app/featuers/home/data/models/book_model/item.dart';
import 'package:clean_architecture_bookly_app/featuers/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    // emit(FeaturedBooksLoading());
    // Either<Failure, List<Item>> result = await homeRepo.fetchFeaturedBooks();
    // result.fold((failure) {
    //   emit(FeaturedBooksFailure(errorMessage: failure.toString())) ;
    // }, (books) {
    //   emit(FeaturedBooksSuccess(books: books)) ;
    // });
  }
}
