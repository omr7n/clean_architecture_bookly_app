
import 'package:clean_architecture_bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            // separatorBuilder: (context, index) => const SizedBox(height: 20,),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookListViewItem(item: state.books[index],),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
