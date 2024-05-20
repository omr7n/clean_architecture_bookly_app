import 'package:clean_architecture_bookly_app/constants.dart';
import 'package:clean_architecture_bookly_app/core/service_locator.dart';
import 'package:clean_architecture_bookly_app/core/utils/app_router.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:clean_architecture_bookly_app/featuers/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'featuers/home/domain/repos/home_repo_impl.dart';

void main() {
  setupServerLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewSetBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        //  home: const SplashView(),
      ),
    );
  }
}
