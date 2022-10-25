// import 'dart:convert';
// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart';
// import 'package:mittarv/src/backend/services/api_url.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mittarv/src/common/widgets/create_dropdown.dart';
// import 'package:mittarv/src/common/widgets/text_will_recipients.dart';
// import 'package:mittarv/src/common/widgets/text_will_recipients.dart';
// import 'package:mittarv/src/controller/user_controller.dart';
import 'package:funchat_app/Screens/landing_page/dashboard.dart';
import 'package:funchat_app/Screens/landing_page/dropdown.dart';

// import 'package:mittarv/src/common/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int count = 5;

  final ScrollController _controllerOne = ScrollController();
  // final UserController userController = Get.find();
  // final UserController userController = Get.put(UserController());

  // bool loading = false;
  // final String url = 'http://10.0.2.2:8000/api/textwill/';
  // // ignore: non_constant_identifier_names
  // final String contact_url = 'http://10.0.2.2:8000/api/connection/';

  // @override
  // void initState() {
  //   super.initState();
  //   getAllTextWills();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: constraints.copyWith(
            minHeight: constraints.maxHeight,
            maxHeight: double.infinity,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: <Widget>[
                Container(
                    color: Theme.of(context).hintColor,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 3.h),

                        Dashboard(),

                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.00,
                              right: MediaQuery.of(context).size.width * 0.00),
                          child: const Dashboard(),
                        ),
                        //Body
                        Container(
                          child: SingleChildScrollView(
                              child: Column(children: <Widget>[
                            Container(
                              width: 390.w,
                              height: 500.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                  )),
                              alignment: Alignment.center,
                              // child: Stack(children: [
                              //   // Align(
                              //   //     alignment: Alignment.topCenter,
                              //   //     child: Container(
                              //   //         margin: EdgeInsets.only(
                              //   //           top: 64.h,
                              //   //         ),
                              //   //         child: const NewSearchBar())),
                              //   // Align(
                              //   //     child: Container(
                              //   //   margin: const EdgeInsets.only(top: 15),
                              //   //   height:
                              //   //       MediaQuery.of(context).size.height * 0.42,
                              //   //   width:
                              //   //       MediaQuery.of(context).size.width * 0.90,
                              //   //   child: Scrollbar(
                              //   //     thickness: 0,
                              //   //     radius: const Radius.circular(3),
                              //   //     thumbVisibility: true,
                              //   //     controller: _controllerOne,
                              //   //     trackVisibility: true,

                              //   //     // child: const Text('hello'),

                              //   //     child: Obx(() {
                              //   //       if (userController.isLoading.value ==
                              //   //           true) {
                              //   //         return const Center(
                              //   //           child: CircularProgressIndicator(),
                              //   //         );
                              //   //       } else {
                              //   //         return ListView.builder(
                              //   //           controller: _controllerOne,
                              //   //           itemCount: userController
                              //   //               .user[0]['textWill'].length,
                              //   //           itemBuilder: (context, int index) {
                              //   //             return TextWillRecipeintBox(
                              //   //               textwill: userController.user[0]
                              //   //                   ['textWill'][index],
                              //   //             );
                              //   //           },
                              //   //         );

                              //   //         // return ListView.builder(
                              //   //         //   controller: _controllerOne,
                              //   //         //   itemCount: userController.user.length,
                              //   //         //   itemBuilder: (BuildContext context,
                              //   //         //       int index) {
                              //   //         //     return TextWillRecipeintBox(
                              //   //         //         connection: connections,
                              //   //         //         textwill: connections);
                              //   //         //   },
                              //   //         // );
                              //   //       }
                              //   //     }),
                              //   //     // child: ListView.builder(
                              //   //     //     itemCount: _textWills.length,
                              //   //     //     controller: _controllerOne,
                              //   //     //     itemBuilder:
                              //   //     //         (BuildContext context, int index) {
                              //   //     //       final textwill = _textWills[index];
                              //   //     //       final connection =
                              //   //     //           _connections[index];
                              //   //     //       if (isText) {
                              //   //     //         return TextWillRecipeintBox(
                              //   //     //             connection: connection,
                              //   //     //             textwill: textwill);
                              //   //     //       } else {
                              //   //     //         return Container();
                              //   //     //       }
                              //   //     //     }),
                              //   //   ),
                              //   // )),
                              //   // Align(
                              //   //     alignment: Alignment.topLeft,
                              //   //     child: Row(
                              //   //         mainAxisAlignment:
                              //   //             MainAxisAlignment.spaceBetween,
                              //   //         children: <Widget>[
                              //   //           Container(
                              //   //             margin: EdgeInsets.fromLTRB(
                              //   //                 10 + 10.w, 15.h, 0.w, 0.h),
                              //   //             child: NewDropdown(
                              //   //                 fun: textchecking,
                              //   //                 isText: isText,
                              //   //                 text: 'dropdown'),
                              //   //           ),
                              //   //           Container(
                              //   //               margin: EdgeInsets.fromLTRB(
                              //   //                   0, 7 + 14.h, 40.w, 0),
                              //   //               child: const CreateDropdown(
                              //   //                   text: 'createdropdown')),
                              //   //         ])),
                              // ]),
                            ),
                          ])),
                        ),
                      ],
                    )),
                // const Expanded(
                //   child: Align(
                //       alignment: Alignment.bottomCenter,
                //       child: Footer() // Your footer widget
                //       ),
                // ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
