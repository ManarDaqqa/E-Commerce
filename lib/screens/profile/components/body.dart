import 'package:commerce/components/social_card.dart';
import 'package:commerce/pref/shared_pref_controller.dart';
import 'package:commerce/screens/profile/components/profile_menu.dart';
import 'package:commerce/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "About",
            icon: "assets/icons/bookmarks.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Logout",
            icon: "assets/icons/Log out.svg",
            press: () async {
              await logout(context);
            },
          ),
          SizedBox(height: 15),
          const Divider(
            indent: 20,
            endIndent: 20,
            thickness: 0.8,
            color: kPrimaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("CONTACT INFO",style: TextStyle(color: kPrimaryColor),),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialCard(
                icon: 'assets/icons/facebook-2.svg',
                press: (){},
              ),
              SocialCard(
                icon: 'assets/icons/whatsapp.svg',
                press: (){},
              )
            ],
          ),
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    bool cleared = await SharedPrefController().clear();
    if(cleared){
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/sign_in_screen', (Route<dynamic> route) => false);
    }
  }
}



