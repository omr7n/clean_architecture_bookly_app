import 'package:clean_architecture_bookly_app/core/errors/failures.dart';
import 'package:clean_architecture_bookly_app/featuers/home/data/models/book_model/item.dart';
import 'package:clean_architecture_bookly_app/featuers/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewSetBooks() async {
    // emit(NewsetBooksLoading());
    // Either<Failure, List<Item>> result = await homeRepo.fetchNewestBooks();
    // result.fold((failure) {
    //   emit(NewsetBooksFailure(errorMessage: failure.toString()));
    // }, (books) {
    //   emit(NewsetBooksSuccess(books: books));
    // });
  }
}
