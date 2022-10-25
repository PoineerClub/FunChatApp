import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key, required this.fun, required this.isChecked})
      : super(key: key);
  Function() fun;
  bool isChecked;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Theme.of(context).hintColor;
      }
      return Theme.of(context).hintColor;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: widget.isChecked,
      onChanged: (bool? value) {
        setState(() {
          widget.isChecked = widget.fun();
        });
      },
    );
  }
}
