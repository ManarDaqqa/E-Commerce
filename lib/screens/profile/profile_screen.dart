import 'package:commerce/components/coustom_bottom_nav_bar.dart';
import 'package:commerce/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
