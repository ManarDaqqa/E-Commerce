import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 46,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.white),
          ),
          primary: Colors.black,
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: () {},
        child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
      ),
    );
  }
}