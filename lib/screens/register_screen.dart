import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fci_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../home_screen.dart';
import 'components/already_have_an_account_check.dart';
import 'components/colour.dart';
import 'components/dropdown_button.dart';
import 'components/passwrd_field_container.dart';
import 'components/rounded_button.dart';
import 'components/text_field_container.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String dropdownSt = "Position";
  String dropdownAY = "Academic Year";
  final _firestore = Firestore.instance;

  bool S = false;
  bool showSpinner=false;
  final _auth = FirebaseAuth.instance;
  String firstName, lastName, name, password, email, position, academicYear;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                SizedBox(
                  height: 64,
                ),
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 100,
                    child: Image.asset('assets/images/cologo.jpg'),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.39,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      decoration: BoxDecoration(
                        color: PLColor,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          firstName = value;
                        },
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Container(
                      width: size.width * 0.39,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                      decoration: BoxDecoration(
                        color: PLColor,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          lastName = value;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                DrobdownButton(
                  items: ['Student', 'Faculty member', 'Employee'],
                  value: dropdownSt,
                  style: (dropdownSt == 'Position')
                      ? TextStyle()
                      : TextStyle(color: Colors.black),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownSt = newValue;
                      position = newValue;
                      if (newValue == 'Student') {
                        S = true;
                      } else if (newValue == 'Faculty member') {
                        print(newValue);
                        S = false;
                        academicYear = null;
                      } else if (newValue == 'Employee') {
                        print(newValue);
                        S = false;
                        academicYear = null;
                      }
                    });
                    setState(() {});
                  },
                ),
                Visibility(
                  visible: S,
                  replacement: SizedBox(height: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      DrobdownButton(
                        items: [
                          'First year',
                          'Second year',
                          'Third year',
                          'fourth year'
                        ],
                        value: dropdownAY,
                        style: (dropdownAY == 'Academic Year')
                            ? TextStyle()
                            : TextStyle(color: Colors.black),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownAY = newValue;
                            academicYear = newValue;
                            if (newValue == 'First year') {
                              print(newValue);
                            } else if (newValue == 'Second year') {
                              print(newValue);
                            } else if (newValue == 'Third year') {
                              print(newValue);
                            } else if (newValue == 'fourth year') {
                              print(newValue);
                            }
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                RoundedInputField(
                  hintText: 'Your University Email',
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
                  text: 'Register',
                  color: PColor,
                  textColor: PLColor,
                  press: () async {
                    name = '$firstName $lastName';
                    setState(() {
                      showSpinner=true;
                    });
                    _firestore.collection('info').add({
                      'academicYear': academicYear,
                      'email': email,
                      'name': name,
                      'password': password,
                      'position': position,
                    });
                    try {
                      final newUser = await _auth.createUserWithEmailAndPassword(
                          email: email,
                          password: password);

                      if (newUser != null) {
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
                  login: false,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
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
