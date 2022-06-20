import 'package:fci_app/taps/tabs_design.dart';
import 'package:flutter/material.dart';

class ActivitiesTab extends StatefulWidget {
  @override
  _ActivitiesTabState createState() => _ActivitiesTabState();
}

class _ActivitiesTabState extends State<ActivitiesTab> {
  String dropdownValue = 'الأنشطة';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        hint: TabDesign(dropdownValue, Colors.grey.shade200),
        elevation: 1,
        iconSize: 0,
        style: TextStyle(color: Color.fromRGBO(162, 162, 162, 1)),
        onChanged: (String newValue) {
          setState(() {});
        },
        dropdownColor: Color.fromRGBO(244, 244, 244, 1),
        items: <String>['الأنشطة الطلابيه', 'ورش العمل']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: TabDesign(value, Colors.grey.shade300),
          );
        }).toList(),
      ),
    );
  }
}
