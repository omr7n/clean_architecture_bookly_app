
import 'package:clean_architecture_bookly_app/core/widgets/custom_error_widget.dart';
import 'package:clean_architecture_bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/manger/similar_boook_cubit/similar_book_cubit.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/manger/similar_boook_cubit/similar_books_state.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .2,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10,
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  CustomBookImage(
                  imageUrl:
                     state.books[index].volumeInfo.imageLinks?.thumbnail?? "",
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
