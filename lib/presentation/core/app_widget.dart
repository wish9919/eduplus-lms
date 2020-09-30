import 'package:eduplus_lms/presentation/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:eduplus_lms/presentation/theme/theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ThemeFont.primary_font,
      ),
      home: Scaffold(
        body: SignInScreen(),
      ),
    );
  }
}
