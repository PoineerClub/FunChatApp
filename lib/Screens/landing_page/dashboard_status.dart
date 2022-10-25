import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types, must_be_immutable
class Dashboard_Status extends StatefulWidget {
  Dashboard_Status(
      {Key? key,
      required this.value_1,
      required this.value_2,
      required this.color1})
      : super(key: key);

  final String value_1;
  final String value_2;
  Color color1;

  @override
  State<Dashboard_Status> createState() => _Dashboard_StatusState();
}

// ignore: camel_case_types
class _Dashboard_StatusState extends State<Dashboard_Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 82.h,
        padding: EdgeInsets.only(
          top: 6.h,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(9.0.r)),
            color: widget.color1),
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.color1 == Theme.of(context).highlightColor
                  ? widget.color1 = Theme.of(context).dividerColor
                  : widget.color1 = Theme.of(context).highlightColor;
            });
          },
          child: Column(
            children: <Widget>[
              Text(
                widget.value_1,
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 5.h),
              Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(widget.value_2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5))
            ],
          ),
        ));
  }
}
