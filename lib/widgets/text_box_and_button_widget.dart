import 'package:flutter/material.dart';
import 'package:registerformbyhpw/constant/colors.dart';
import 'package:registerformbyhpw/constant/dimens.dart';

class TextBoxAndButtonWidget extends StatelessWidget {
  const TextBoxAndButtonWidget({Key? key,required this.textBoxName,
    this.isIcon = true , this.isBackgroundColor = false, this.isTextCenter = false, this.isSecondaryTextColor = false,}) : super(key: key);

  final String textBoxName;
  final bool isIcon;
  final bool isBackgroundColor;
  final bool isTextCenter;
  final bool isSecondaryTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: (isTextCenter) ? Alignment.center : Alignment.centerLeft,
      width: kTextBoxAndButtonWidth,
      height: kTextBoxAndButtonHeight,
      margin: const EdgeInsets.only(left: kSP20x,right: kSP20x),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSP5x),
          border: Border.all(color: kSecondaryColor),
          gradient: LinearGradient(
            colors:  (isBackgroundColor) ? [Colors.blue , Colors.lightBlue, Colors.green] : [Colors.white,Colors.white, Colors.white,],
          )

      ),
      child: (isIcon) ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  const EdgeInsets.only(left:kSP20x),
            child: Text(
                textBoxName,
                style: TextStyle(
                  color: isSecondaryTextColor ? kSecondaryTextColor : kPrimaryTextColor,
                  fontSize: kFS18x,)),
          ),
          const Padding(
            padding:  EdgeInsets.only(right:kSP10x),
            child: Icon(Icons.account_box_rounded),
          ),
        ],
      )
          : Padding(
        padding:  const EdgeInsets.only(left:kSP20x,top:kSP12x),
        child: Text(
            textBoxName,
            style: TextStyle(fontSize: kFS18x,
              color: isSecondaryTextColor ? kSecondaryTextColor : kPrimaryTextColor,)),
      ),
    );
  }
}
