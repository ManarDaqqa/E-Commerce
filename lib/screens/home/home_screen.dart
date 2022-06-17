import 'package:commerce/components/coustom_bottom_nav_bar.dart';
import 'package:commerce/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
