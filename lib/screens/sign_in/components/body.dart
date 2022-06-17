import 'package:commerce/components/custom_surfix_icon.dart';
import 'package:commerce/components/default_button.dart';
import 'package:commerce/components/no_account_text.dart';
import 'package:commerce/components/social_card.dart';
import 'package:commerce/constants.dart';
import 'package:commerce/screens/sign_in/components/sign_form.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight* 0.04),
                  Text(AppLocalizations.of(context)!.login_hint,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.login_info,
                      textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight* 0.08),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight* 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: 'assets/icons/google-icon.svg',
                        press: (){},
                      ),
                      SocialCard(
                        icon: 'assets/icons/facebook-2.svg',
                        press: (){},
                      ),
                      SocialCard(
                        icon: 'assets/icons/twitter.svg',
                        press: (){},
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  NoAccountText(),
                ],
              ),
            ),
          ),
        )
    );
  }
}






