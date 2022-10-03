import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key, required this.path}) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return InkWell(


      onTap: (){},
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(4)),
          child: CircleAvatar(

            backgroundColor: Colors.grey[200],
            radius: getProportionateScreenWidth(20),
            child: SvgPicture.asset(path,
            ),
          ),
        ),
    );
  }
}
