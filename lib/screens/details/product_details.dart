
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {

  const ProductDetailsScreen({Key? key}) : super(key: key);
  static String id = "ProductDetailsScreen";

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
   int imageIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(),
      body: SizedBox(
        height: SizeConfig.screenHeight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Container(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/ps4_console_white_${imageIndex+1}.png",
                    height: getProportionateScreenHeight(350),
                    width: SizeConfig.screenWidth,),
                    Container(

                      width: getProportionateScreenWidth(50)*5-20,
                      height: getProportionateScreenWidth(50),
                      child: ListView.separated(


                        scrollDirection: Axis.horizontal,

                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: (){
                              imageIndex = index;
                              setState(() {

                              });

                            },
                            child: Container(
                              width: getProportionateScreenWidth(50),
                              height: getProportionateScreenHeight(50),
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(getProportionateScreenWidth(5)),

                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(getProportionateScreenWidth(4)),
                                child: Image.asset("assets/images/ps4_console_white_${index+1}.png",

                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: getProportionateScreenWidth(10),
                          );
                        },
                        itemCount: 4,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Text("ddddddddddd"),
                    Spacer(),
                    Text("ddddddddddddddd"),
                    TextButton(
                      onPressed: () {  },
                      child: Text("ddd"),)

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
