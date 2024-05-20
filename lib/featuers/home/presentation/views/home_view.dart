
import 'package:clean_architecture_bookly_app/featuers/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: HomeViewBody()
    );
  }
}
