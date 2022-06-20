import 'package:fci_app/home_screen.dart';
import 'package:fci_app/screens/components/already_have_an_account_check.dart';
import 'package:fci_app/screens/components/colour.dart';
import 'package:fci_app/screens/components/passwrd_field_container.dart';
import 'package:fci_app/screens/components/rounded_button.dart';
import 'package:fci_app/screens/components/text_field_container.dart';
import 'package:fci_app/screens/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email, password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 64),
                  child: Text(
                    'Log In',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: PColor),
                  ),
                ),
                Hero(
                    tag: 'logo',
                    child: Container(
                      height: 200,
                      child: Image.asset('assets/images/cologo.jpg'),
                    )),
                SizedBox(
                  height: 64,
                ),
                RoundedInputField(
                  hintText: 'Your Email',
                  //keyboardType: TextInputType.emailAddress,
                  icon: Icons.email,
                  onChanged: (value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                RoundedInputField(
                  hintText: 'Password',
                  type: 'password',
                  icon: Icons.lock,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                RoundedButton(
                  text: 'LOGIN',
                  color: PColor,
                  textColor: PLColor,
                  press: () async {
                    final user = _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      if (user != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                        setState(() {
                          showSpinner=false;
                        });
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
