import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailSAppBar extends StatelessWidget {
  const CustomBookDetailSAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.close),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
