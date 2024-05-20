import 'package:clean_architecture_bookly_app/featuers/home/domain/entities/book_entities.dart';

abstract class HomeLocalDataSource {
 List<BookEntities> fetchNewestBooks();
List<BookEntities> fetchFeaturedBooks();
}


class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntities> fetchFeaturedBooks() {

    throw UnimplementedError();
  }

  @override
  List<BookEntities> fetchNewestBooks() {

    throw UnimplementedError();
  }

}