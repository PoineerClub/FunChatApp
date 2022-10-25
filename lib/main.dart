import 'package:flutter/material.dart';
import 'package:funchat_app/Screens/pages/homePage.dart';
// import 'package:funchat_app/Screens/landing_page/home.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:funchat_app/Screens/pages/homePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
        builder: (BuildContext BuildContext, Widget? context) {
          return HomePage();
        });
  }
}
