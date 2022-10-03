
import 'package:flutter/material.dart';

import '../size_config.dart';
import '../utils/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.text,this.onPressed,}) : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15))),
      onPressed: onPressed ?? (){

      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: getProportionateScreenHeight(25),
            fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
