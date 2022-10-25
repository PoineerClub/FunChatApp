import 'package:flutter/material.dart';
import 'package:funchat_app/Screens/pages/groupTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.cabin), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //hi charred
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Welcome Oji👋',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                height: 8,
                              ),
                              Text('FunChat',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold))
                            ]),

                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.all(12),
                            child:
                                Icon(Icons.notifications, color: Colors.white))

                        //notifiacttion
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        )),
                    child: Center(
                        child: Column(children: [
                      //exercise heading
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('RecentChat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Icon(Icons.more_horiz)
                          ]),

                      SizedBox(height: 10),

                      // listview of exercise
                      Expanded(
                        child: Container(
                          // borderRadius: BorderRadius.circular(12)),
                          child: ListView(children: [
                            GroupTile(),
                            GroupTile(),
                            GroupTile()
                          ]),
                        ),
                      )
                    ]))),
              )
            ],
          ),
        ));
  }
}
