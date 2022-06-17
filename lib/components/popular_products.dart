import 'package:commerce/components/product_card.dart';
import 'package:commerce/models/Product.dart';
import 'package:commerce/screens/details/details_screen.dart';
import 'package:commerce/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
            text: 'Popular Product',
            press: (){}
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(context, '/details',
                      arguments: ProductDetailsArguments(demoProducts[index])) ,
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20))
            ],
          ),
        ),
      ],
    );
  }
}


