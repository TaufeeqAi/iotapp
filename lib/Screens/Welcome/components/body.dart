import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jaguar/Screens/Login/components/background.dart';
import 'package:jaguar/Screens/Login/login_screen.dart';
import 'package:jaguar/Screens/Signup/signup_screen.dart';
import 'package:jaguar/components/rounded_button.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Jaguar99",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: SvgPicture.asset(
                "assets/icons/atom.svg", height: 150, color: kPrimaryColor,
                //  width: double.infinity,
              ),
            ),
            Container(
              height: 250,
              child: SvgPicture.asset(
                "assets/icons/new.svg",
                height: size.height * 0.45,
                width: double.infinity,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
