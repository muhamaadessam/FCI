import 'package:flutter/material.dart';

import 'colour.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      decoration: BoxDecoration(
        color: PLColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
bool _isHidden = true;
class RoundedInputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final ValueChanged<String> onChanged;
  final String type;

  const RoundedInputField(
      {Key key, this.icon, this.hintText, this.onChanged, this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: type=="password"?TextInputType.visiblePassword:TextInputType.emailAddress,
        textAlign: TextAlign.center,
        onChanged: onChanged,
        obscureText: type=="password"?_isHidden:!_isHidden,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: PColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
