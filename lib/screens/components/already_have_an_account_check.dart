import 'package:flutter/material.dart';

import 'colour.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({Key key, this.login = true, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Don\'t have an Account ?' : 'Already have an Account ?',
          style: TextStyle(
            color: PColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? ' Register' : ' Log In',
            style: TextStyle(
              color: PColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
