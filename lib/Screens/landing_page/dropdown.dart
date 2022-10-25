import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewDropdown extends StatefulWidget {
  NewDropdown(
      {Key? key, required this.fun, required this.isText, required this.text})
      : super(key: key);
  final String text;
  Function() fun;
  var isText;

  @override
  State<NewDropdown> createState() => _NewDropdownState();
}

class _NewDropdownState extends State<NewDropdown> {
  GlobalKey? actionKey;
  double height = 0, width = 0, xPosition = 0, yPosition = 0;
  bool isDropdownOpened = false;
  late OverlayEntry floatingDropdown;

  @override
  void initState() {
    actionKey = LabeledGlobalKey(widget.text);
    super.initState();
  }

  bool textchecking() {
    setState(() {
      if (textSelect == true) {
        textSelect = false;
      } else if (textSelect == false) {
        textSelect = true;
      }
      widget.isText = widget.fun();
    });
    return textSelect;
  }

  bool audiochecking() {
    setState(() {
      if (audioSelect == true) {
        audioSelect = false;
      } else if (audioSelect == false) {
        audioSelect = true;
      }
    });
    return audioSelect;
  }

  bool videochecking() {
    setState(() {
      if (videoSelect == true) {
        videoSelect = false;
      } else if (videoSelect == false) {
        videoSelect = true;
      }
    });
    return videoSelect;
  }

  void findDropdownData() {
    RenderBox renderBox =
        actionKey?.currentContext!.findRenderObject() as RenderBox;

    height = renderBox.size.height;
    width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
  }

  bool textSelect = true, videoSelect = true, audioSelect = true;
  bool selected = false;
  final String _beginvalue = 'My Emotional Wills';
  // ignore: always_specify_types
  List<String> _choices = [];

  void _buildChoiceChips(BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierLabel: 'Barrier',
        barrierDismissible: true,
        barrierColor: const Color.fromRGBO(5, 74, 104, 0.39),
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: (_, __, ___) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 190,
                height: 41.h,
                margin: EdgeInsets.fromLTRB(xPosition, yPosition, 0, 0),
                decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 6.h, 0.w, 6.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
                      ),
                      child: Text(
                        _beginvalue,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 5.h, 0.w, 0),
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(xPosition, 0, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: AlignmentDirectional.topStart,
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                  itemCount: _choices.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) {
                    Widget item = Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: GestureDetector(
                          onTap: (() {
                            //testencryption

                            setState(() {
                              selected = false;
                              Navigator.pop(context);
                            });
                          }),
                          child: Container(
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0.r)),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: Container(
                                  width: 192,
                                  height: 42.h,
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0.r)),
                                  ),
                                  child: Row(children: <Widget>[
                                    Text(
                                      _choices[index],
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                    const Spacer(),
                                  ])),
                            ),
                          ),
                        ));

                    return item;
                  },
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: always_specify_types
    _choices = ["1", "2", "3"];
    return GestureDetector(
        key: actionKey,
        onTap: (() {
          findDropdownData();

          selected = true;
          _buildChoiceChips(context);
        }),
        child: Column(
          children: <Widget>[
            Container(
                height: 42.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0.r)),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 11.h, 0.w, 11.h),
                      child: Text(
                        _beginvalue,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(1.w, 13.h, 15.w, 10.h),
                      alignment: Alignment.topRight,
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 18,
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
