import 'package:commerce/components/default_button.dart';
import 'package:commerce/constants.dart';
import 'package:commerce/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text('OTP Verification', style: headingStyle),
            Text('We sent your code to +1 898 860 ***'),
            buildTimer(),
            OtpForm(),
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This code will expired in '),
            TweenAnimationBuilder(
              tween: Tween(begin: 60.0, end: 0),
              duration: Duration(seconds: 60),
              builder: (context, value, child) => Text(
                  '00:${value}',
                style: TextStyle(color: kPrimaryColor),
              ) ,
              onEnd: (){},
            )
          ],
        );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}){
    if(value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value){
                      nextField(value: value, focusNode: pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value){
                      nextField(value: value, focusNode: pin3FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value){
                      nextField(value: value, focusNode: pin4FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value){
                      pin4FocusNode.unfocus();
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight *0.15),
            DefaultButton(text: 'Continue', pressed: (){}),

          ],
        )
    );
  }
}

