import 'package:fci_app/screens/components/text_field_container.dart';
import 'package:flutter/material.dart';

import 'colour.dart';

class DrobdownButton extends StatelessWidget {
  final List<String> items;
  final Function onChanged;
  final String value;
  final TextStyle style;

  const DrobdownButton(
      {Key key, this.items, this.onChanged, this.value, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        hint: Container(
          width: size.width * 0.8,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: PLColor,
            borderRadius: BorderRadius.circular(29),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              style: style,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        iconSize: 0,
        onChanged: onChanged,
        dropdownColor: Color.fromRGBO(244, 244, 244, 1),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: TextFieldContainer(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
