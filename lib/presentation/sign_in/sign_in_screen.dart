import 'package:eduplus_lms/presentation/sign_in/widgets/login_input.dart';
import 'package:eduplus_lms/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage(
                          'assets/login_vector.png',
                        ))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
              width: width,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Image.asset(
                      'assets/logo.png',
                      width: (width / 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Let\'s Sign In Here',
                          style: TextStyle(
                            fontSize: 20,
                            color: ThemeColors.primary_color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        LoginInput(
                          hintText: 'Registration ID',
                          icon: Icon(
                            Feather.user,
                            size: 22,
                            color: ThemeColors.accent_color,
                          ),
                        ),
                        SizedBox(height: 20),
                        LoginInput(
                            hintText: 'Password',
                            icon: Icon(
                              Feather.lock,
                              size: 22,
                              color: ThemeColors.accent_color,
                            )),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Don\'t have an account'),
                            SizedBox(width: 5),
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              child: Text('Sign Up',
                                  style: TextStyle(
                                    color: ThemeColors.accent_color,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: Container(
                                  width: width / 1.5,
                                  padding:
                                      EdgeInsets.only(top: 12.0, bottom: 12.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: ThemeColors.accent_color
                                              .withOpacity(0.2),
                                          spreadRadius: 0.5,
                                          blurRadius: 7,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: ThemeColors.accent_color)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('SIGN IN',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: ThemeColors.accent_color,
                                          )),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Feather.arrow_right,
                                        size: 22,
                                        color: ThemeColors.accent_color,
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
