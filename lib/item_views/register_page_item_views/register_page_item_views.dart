import 'package:flutter/material.dart';
import 'package:registerformbyhpw/constant/colors.dart';
import 'package:registerformbyhpw/constant/dimens.dart';
import 'package:registerformbyhpw/constant/strings.dart';
import 'package:registerformbyhpw/widgets/text_box_and_button_widget.dart';

class TextBoxItemView extends StatelessWidget {
  const TextBoxItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            kPageTitle,
            style: TextStyle(
                fontSize: kFS25x,
                fontWeight: FontWeight.w500,
                color: kPrimaryTextColor,
            ),
              textAlign: TextAlign.center
          ),
        ),
        const SizedBox(
          height: kSP30x,
        ),
        const TextBoxAndButtonWidget(textBoxName:kName),
        const SizedBox(
          height: kSP30x,
        ),
        const TextBoxAndButtonWidget(textBoxName:kEmail,isIcon: false),
        const SizedBox(
          height: kSP30x,
        ),
        const TextBoxAndButtonWidget(textBoxName:kPassword),
        const SizedBox(
          height: kSP30x,
        ),
        const TextBoxAndButtonWidget(textBoxName:kRepeatPassword),
        const SizedBox(
          height: kSP30x,
        ),
        Padding(
          padding: const EdgeInsets.only(left: kSP20x,right: kSP20x),
          child: Row(
            children: [
              Checkbox(value: false,
                  onChanged: (value) {}),
              const Text.rich(
                TextSpan(
                  text: kAgree,
                  style: TextStyle(fontSize: kFS16x,),
                  children: <TextSpan>[
                    TextSpan(
                        text: kTerms,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
class ButtonAndTextItemView extends StatelessWidget {
  const ButtonAndTextItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextBoxAndButtonWidget(textBoxName:kSingUpBtn,isBackgroundColor:true,isIcon: false,isTextCenter : true,isSecondaryTextColor: true,),
        SizedBox(
          height: kSP100x,
        ),
        Center(
          child: Text.rich(
            TextSpan(
              text: kLoginText,
              style: TextStyle(fontSize: kFS16x,),
              children: <TextSpan>[
                TextSpan(
                    text: kLoginHere,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

