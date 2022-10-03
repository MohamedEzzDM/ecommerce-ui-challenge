import 'package:ecommerce/screens/details/product_details.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [

          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Heart Icon.svg",),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/User Icon.svg"),
            label: '',

          ),

        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(20)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      width: SizeConfig.screenWidth,
                      child: TextFormField(
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                            iconColor: Colors.grey[100],
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: kSecondaryColor,
                            ),
                            hintText: "Search product"),
                      ),
                    ),
                  ),
                  Expanded(
                      child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: IconButton(
                      icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                      onPressed: () {},
                    ),
                  )),
                  Expanded(
                      child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: IconButton(
                      icon: SvgPicture.asset("assets/icons/Bell.svg"),
                      onPressed: () {},
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff392481),
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                height: getProportionateScreenHeight(120),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A summer Suprise",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                      Text("Cashback 20%",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(25),
                              color: Colors.white))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomStack(
                    underIconText2: 'Deal',
                    iconPath: 'assets/icons/Flash Icon.svg',
                    underIconText1: 'Flash',
                  ),
                  CustomStack(
                    underIconText2: ' ',
                    iconPath: 'assets/icons/Bill Icon.svg',
                    underIconText1: 'Bill',
                  ),
                  CustomStack(
                    underIconText2: ' ',
                    iconPath: 'assets/icons/Game Icon.svg',
                    underIconText1: 'Game',
                  ),
                  CustomStack(
                    underIconText2: 'Gift',
                    iconPath: 'assets/icons/Gift Icon.svg',
                    underIconText1: 'Daily',
                  ),
                  CustomStack(
                    underIconText2: ' ',
                    iconPath: 'assets/icons/Discover.svg',
                    underIconText1: 'More',
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                children: [
                  Text("Special for you",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(16))),
                  Spacer(),
                  Text(
                    "See More",
                    style: TextStyle(
                        color: kSecondaryColor.withOpacity(0.8),
                        fontSize: getProportionateScreenWidth(14)),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              SizedBox(
                height: getProportionateScreenHeight(150),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(20)),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/Image Banner 2.png',
                                  ),
                                  fit: BoxFit.fill),
                            ),
                            foregroundDecoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1)
                                ], // red to yellow
                                tileMode: TileMode
                                    .repeated, // repeats the gradient over the canvas
                              ),
                            ),
                            width: getProportionateScreenWidth(250),
                            height: getProportionateScreenHeight(150),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.all(getProportionateScreenWidth(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Smartphones",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(15),
                                    color: Colors.white),
                              ),
                              Text("18 Brands",
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(12),
                                      color: Colors.white))
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: getProportionateScreenWidth(12),
                    );
                  },
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                children: [
                  Text("Popular Product",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(16))),
                  Spacer(),
                  Text(
                    "See More",
                    style: TextStyle(
                        color: kSecondaryColor.withOpacity(0.8),
                        fontSize: getProportionateScreenWidth(14)),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),

              Container(
                height: getProportionateScreenHeight(240),

                child: ListView.separated(

                  scrollDirection: Axis.horizontal,
                  itemCount: demoProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PopularProductItem(index: index, popularItemPrice: demoProducts[index].price, popularItemName: demoProducts[index].title,) ;
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: getProportionateScreenWidth(12),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class CustomStack extends StatelessWidget {
  const CustomStack(
      {Key? key,
      required this.iconPath,
      required this.underIconText1,
      required this.underIconText2})
      : super(key: key);
  final String underIconText1;
  final String underIconText2;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: getProportionateScreenWidth(50),
              height: getProportionateScreenHeight(70),
              decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8)),
            ),
            SvgPicture.asset(
              iconPath,
              width: getProportionateScreenWidth(25),
              height: getProportionateScreenHeight(30),

            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            underIconText1,
          ),
        ),
        Text(
          underIconText2,
        )
      ],
    );
  }
}


//----------------------------

class PopularProductItem extends StatelessWidget {
  final int index;

  final double popularItemPrice;
  final String popularItemName;

  const PopularProductItem({Key? key, required this.index, required this.popularItemPrice, required this.popularItemName}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(120),



      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

          mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, ProductDetailsScreen.id);
            },
            child: Container(
              width: getProportionateScreenWidth(120),
              height: getProportionateScreenHeight(150),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(demoProducts[index].images[0],),
            ),
          ),
          Text(popularItemName,
          maxLines: 2,
          overflow: TextOverflow.ellipsis),
          Spacer(),
          Container(
            width: getProportionateScreenWidth(120),
            child: Row(
              children: [
                Text("${popularItemPrice} \$",
                  style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.9),
                      fontSize: getProportionateScreenWidth(17),
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                CircleAvatar(

                  radius: getProportionateScreenWidth(14),
                  backgroundColor: Colors.grey[100],
                  child: IconButton(
                    icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                    onPressed: () {},
                  ),
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}
