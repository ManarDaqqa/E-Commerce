import 'package:commerce/components/popular_products.dart';
import 'package:commerce/screens/home/components/special_offer.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'dis_count_banner.dart';
import 'home_header.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(20)),
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(30)),
              DisCountBanner(),
              SizedBox(height: getProportionateScreenWidth(30)),
              Categories(),
              SizedBox(height: getProportionateScreenWidth(30)),
              SpecialOffers(),
              SizedBox(height: getProportionateScreenWidth(30)),
              PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
    ));
  }
}















