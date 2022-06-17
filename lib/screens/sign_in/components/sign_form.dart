import 'package:commerce/components/custom_surfix_icon.dart';
import 'package:commerce/components/default_button.dart';
import 'package:commerce/models/user.dart';
import 'package:commerce/pref/shared_pref_controller.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:commerce/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // final _formKey = GlobalKey<FormState>();
  // late String email;
  // late String password;
  // final List<String> errors =[];
  bool remember= false;
  late TextEditingController _emailTextController;
  late TextEditingController _passTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passTextController.dispose();
    super.dispose();
  }

  // void addError({required String error}){
  //   if(!error.contains(error))
  //     setState(() {
  //       errors.add(error);
  //     });
  // }
  // void removeError({required String error}){
  //   if(error.contains(error))
  //     setState(() {
  //       errors.remove(error);
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value){
                    setState(() {
                      remember =value!;
                    });
                  }
              ),
              Text(AppLocalizations.of(context)!.remember),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/forgot_password_screen'),
                child: Text(
                  AppLocalizations.of(context)!.forgot_pass,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: AppLocalizations.of(context)!.continu,
            pressed: () async {
               await performSave();
            },
          ),
        ],
      ),
    );
  }
  TextFormField buildEmailFormField(){
    return TextFormField(
      controller: _emailTextController,
      keyboardType: TextInputType.emailAddress,
      style: GoogleFonts.cairo(),
      // onSaved: (newValue) => email = newValue!,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kEmailNullError);
      //   }else if (emailValidatorRegExp.hasMatch(value)) {
      //    removeError(error: kInvalidEmailError);
      //   }
      //   return null;
      // },
      // validator: (value){
      //   if (value!.isEmpty) {
      //     addError(error: kEmailNullError);
      //     return '';
      //   }else if (!emailValidatorRegExp.hasMatch(value)) {
      //     addError(error: kInvalidEmailError);
      //     return '';
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: AppLocalizations.of(context)!.email,
        hintText: AppLocalizations.of(context)!.enter_email,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Mail.svg'),

      ),
    );
  }
  TextFormField buildPasswordFormField(){
    return TextFormField(
      controller: _passTextController,
      obscureText: true,
      style: GoogleFonts.cairo(),
      // onSaved: (newValue) => password = newValue!,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //    removeError(error: kPassNullError);
      //   }else if (value.length >= 8) {
      //     addError(error: kShortPassError);
      //   }
      //   return null;
      // },
      // validator: (value){
      //   if (value!.isEmpty) {
      //     addError(error: kPassNullError);
      //     return '';
      //   }else if (value.length < 8) {
      //     addError(error: kShortPassError);
      //     return '';
      //   }
      //   return null;
      // },
      decoration:  InputDecoration(
        labelText: AppLocalizations.of(context)!.password,
        hintText: AppLocalizations.of(context)!.enter_pass,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Lock.svg'),

      ),
    );
  }
Future<void> performSave() async{
  if(checkData()){
   await save();
  }
}

bool checkData(){
  if (_emailTextController.text.isNotEmpty && _passTextController.text.isNotEmpty){
    return true;
  }
  ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
        content: Text(AppLocalizations.of(context)!.error_hint),
        backgroundColor: Colors.red,
    ),
  );
  return false;
}
Future<void> save() async{
   await SharedPrefController().save(user: user);
   Future.delayed(Duration(seconds: 1),() {
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
}
   User get user {
     User user = User();
     user.name='UserName';
     user.email = _emailTextController.text;

     return user;
   }
}

