import 'package:clean_architecture_bookly_app/core/utils/api_service.dart';
import 'package:clean_architecture_bookly_app/featuers/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl({
    required this.apiService,
  });

  final ApiService apiService;
  @override
  Future<Either<Failure, List<Item>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=computer scince&Sorting=newest ");
      List<Item> book = [];
      for (var item in data["items"]) {
        book.add(Item.fromJson(item));
      }
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:Programming");
      List<Item> book = [];
      for (var item in data["items"]) {
        book.add(Item.fromJson(item));
      }
      return right(book);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  // @override
  // Future<Either<Failure, List<Item>>> fetchSimilarBooks(
  //     {required String category}) async {
  //   try {
  //     var data = await apiService.get(
  //         endPoint:
  //             "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=relevance ");
  //     List<Item> book = [];
  //     for (var item in data["items"]) {
  //       book.add(Item.fromJson(item));
  //     }
  //     return right(book);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return Left(ServerFailure.fromDioException(e));
  //     }
  //     return Left(ServerFailure(errorMessage: e.toString()));
  //   }
  // }
}
