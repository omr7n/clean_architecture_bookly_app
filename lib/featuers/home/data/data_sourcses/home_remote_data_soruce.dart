import 'package:clean_architecture_bookly_app/core/utils/api_service.dart';
import 'package:clean_architecture_bookly_app/featuers/home/data/models/book_model/item.dart';
import 'package:clean_architecture_bookly_app/featuers/home/domain/entities/book_entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntities>> fetchNewestBooks();
  Future<List<BookEntities>> fetchFeaturedBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntities>> fetchFeaturedBooks() async {
    Map<String, dynamic> data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=computer scince");
    List<BookEntities> books = getBooksList(data);
    return books;
    
  }


  @override
  Future<List<BookEntities>> fetchNewestBooks() async{
  Map<String, dynamic> data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest ");
    List<BookEntities> books = getBooksList(data);
    return books;
  }
}



List<BookEntities> getBooksList(Map<String, dynamic> data) {
  List<BookEntities> books = [];
  for (var item in data["items"]) {
    books.add(Item.fromJson(item));
  }
  return books;
}
