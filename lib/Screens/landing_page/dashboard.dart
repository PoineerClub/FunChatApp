import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mittarv/src/controller/user_controller.dart';
// import 'package:mittarv/src/landing_page/dashboard_status.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193.h,
      width: 330.w,
      margin: EdgeInsets.fromLTRB(0, 8.h, 0, 26.h),
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        borderRadius: BorderRadius.all(Radius.circular(9.0.r)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context).dividerColor,
            offset: const Offset(
              0.0,
              5.0,
            ),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(
                14, MediaQuery.of(context).size.height * 0.015, 0, 0),
            alignment: Alignment.topLeft,
            child: Text(
              "heloo",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Container(), Container(), Container()],
          ),
          GestureDetector(
              onTap: () {
                print('Clicking add more');
              },
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                  child: Text(
                    "mai hu",
                    style: Theme.of(context).textTheme.caption,
                  )))
        ],
      ),
    );
  }
}
