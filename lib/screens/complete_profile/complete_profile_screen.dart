import 'package:commerce/screens/complete_profile/components/body.dart';
import 'package:flutter/material.dart';


class CpmpleteProfileScreen extends StatelessWidget {
  const CpmpleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
