
import 'package:clean_architecture_bookly_app/featuers/home/presentation/views/home_view.dart';
import 'package:clean_architecture_bookly_app/featuers/search/presentation/views/search_view.dart';
import 'package:clean_architecture_bookly_app/featuers/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (BuildContext context, GoRouterState state) => BlocProvider(
      //     create: (context) => SimilarBooksCubit(
      //       getIt.get<HomeRepoImpl>(),
      //     ),
      //     child:  BookDetailsView(item: state.extra as Item,),
      //   ),
      // ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) =>
            const SearchView(),
      ),
    ],
  );
}
