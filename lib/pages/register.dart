import 'package:flutter/material.dart';
import 'package:registerformbyhpw/constant/dimens.dart';
import 'package:registerformbyhpw/constant/strings.dart';
import 'package:registerformbyhpw/item_views/register_page_item_views/register_page_item_views.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppBarText),
      ),
      body: const Column(
        children: [
          TextBoxItemView(),
          SizedBox(
            height: kSP8x,
          ),
          ButtonAndTextItemView(),
        ],
      ),

    );
  }
}
