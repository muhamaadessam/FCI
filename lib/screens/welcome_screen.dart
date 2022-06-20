import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fci_app/screens/components/colour.dart';
import 'package:fci_app/screens/components/rounded_button.dart';
import 'package:fci_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WelcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: 'logo',
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                height: animation.value * 150,
                child: Image.asset('assets/images/cologo.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 200),
            child: TypewriterAnimatedTextKit(
             // speed: Duration(milliseconds: 70),
              //totalRepeatCount: 1,
              text: ["Faculty of Computers \n\t\t\tAnd Information"],
              //text: ['كلية الحاسبات و المعلومات'],

              textStyle: TextStyle(
                fontSize: 34,
                fontFamily: 'SansitaSwashed',
                // color: Color.fromRGBO(141, 10, 54, 1),
                color: Colors.teal.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RoundedButton(
            text: 'Log In',
            // text: 'تسجيل الدخول',
            color: PColor,
            textColor: Colors.white,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          SizedBox(
            height: 16,
          ),
          RoundedButton(
            text: 'Register',
            // text: 'إنشاء حساب جديد',
            color: PLColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
          ),
        ],
      ),
    );
  }
}
