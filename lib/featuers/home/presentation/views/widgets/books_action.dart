
import 'package:clean_architecture_bookly_app/featuers/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';


class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "Free",
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 16,
              backgroundColor: const Color(0xFFEF8262),
              textColor: Colors.white,
              text: getText(item),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              onPressed: () async {
                // Uri url = Uri.parse(item.saleInfo!.buyLink!);

                // if (await canLaunchUrl(url)) {
                //   // throw Exception('Could not launch $url');
                //   await launchUrl(url);
                // }
              },
            ),
          ),
        ],
      ),
    );
  }

 String getText(Item item) {
    if (!(item.volumeInfo.previewLink! == null)) {
      return "not Avaliable";
    } else {
      return "Free preview";
    }
  }
}
