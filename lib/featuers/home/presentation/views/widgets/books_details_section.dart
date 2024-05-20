
import 'package:clean_architecture_bookly_app/core/utils/styles.dart';
import 'package:clean_architecture_bookly_app/featuers/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.22,
          ),
          child: CustomBookImage(
            imageUrl: item.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          item.volumeInfo.title ?? "",
          style: Styles.styleBold30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            textAlign: TextAlign.center,
            item.volumeInfo.authors![0],
            style: Styles.styleSemiBold18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRating(
          count: item.volumeInfo.pageCount ?? 0,
          rating: item.volumeInfo.pageCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        BooksAction(
          item: item,
        ),
      ],
    );
  }
}
