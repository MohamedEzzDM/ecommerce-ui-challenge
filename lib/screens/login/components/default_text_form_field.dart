import 'package:ecommerce/utils/constants.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({Key? key, required this.label, required this.hintText, this.icon}) : super(key: key);

  final String label;
  final String hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      validator: (value){
        if(value!.isEmpty){
          return "value is embty";
        }
        return null;

      },


      decoration: InputDecoration(

        contentPadding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20
        ),

          label: Text(label),
          suffixIcon: Icon(
             icon
          ),
          hintText: hintText,

          focusedBorder: OutlineInputBorder(
            gapPadding: 8,
            borderSide: BorderSide(
              color: kPrimaryColor
            ),

            borderRadius: BorderRadius.circular(30)
          ),
          border: OutlineInputBorder(


            borderSide: BorderSide(
              color: kSecondaryColor
            ),
              borderRadius: BorderRadius.circular(30)
          )
      ),
    );
  }
}
