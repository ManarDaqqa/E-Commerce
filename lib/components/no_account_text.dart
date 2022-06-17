import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.have_account,
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/sign_up_screen'),
          child: Text(
            AppLocalizations.of(context)!.signup,
            style: TextStyle(fontSize: getProportionateScreenWidth(16),color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}