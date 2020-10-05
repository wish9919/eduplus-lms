import 'package:flutter/material.dart';
import 'package:eduplus_lms/presentation/theme/theme.dart';

class LoginInput extends StatelessWidget {
  final String hintText;
  final Icon icon;
  bool secureText;
  LoginInput({@required this.hintText, @required this.icon, this.secureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ThemeColors.accent_color,
            width: 1.0,
          )),
      child: TextField(
        obscureText: secureText == null ? false : true,
        decoration: InputDecoration(
            icon: icon,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: ThemeColors.text_hint,
              fontSize: 14,
              letterSpacing: 1.5,
            )),
      ),
    );
  }
}
