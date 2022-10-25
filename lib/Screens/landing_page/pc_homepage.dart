import 'package:flutter/material.dart';

class MyPCHomepage extends StatefulWidget {
  const MyPCHomepage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyPCHomepage> createState() => _MyPCHomepageState();
}

class _MyPCHomepageState extends State<MyPCHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'MittArv - Coming Soon !!!',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Connect with your inner self.',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
