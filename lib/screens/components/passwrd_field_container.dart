import 'package:fci_app/screens/components/colour.dart';
import 'package:fci_app/screens/components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

bool _isHidden = true;

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField(
      {Key key, this.hintText, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        textAlign: TextAlign.center,
        obscureText: _isHidden,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: PColor,
          ),
          /*suffixIcon: hintText == "password"
              ? null
              : IconButton(
                  icon: _isHidden
                      ? Icon(
                          Icons.visibility_off,
                          color: PColor,
                        )
                      : Icon(
                          Icons.visibility,
                          color: PColor,
                        ),
                  onPressed: () {
                    _isHidden = !_isHidden;
                  }),*/
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
