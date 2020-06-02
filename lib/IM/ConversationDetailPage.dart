import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:imdemo/common/view/CircularImageView.dart';
import 'package:imdemo/helper/CommonHelper.dart';
import '../extension/SRExtension.dart';

class ConversationDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConversationDeteailPage();
}

class _ConversationDeteailPage extends State<ConversationDetailPage> {
  ScrollController _listViewController;
  TextEditingController _textFieldController;
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPersistentFrameCallback((callback) {
    //   log("message");
    // });

    _textFieldController = TextEditingController();
    _listViewController = ScrollController();
    _listViewController.addListener(() {
      // _textFieldController.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white
              .setDarkModeColor(context, Color.fromARGB(255, 20, 20, 20)),
          title: Text("刘怀成",
              style: TextStyle(
                  color: Colors.black.setDarkModeColor(context, Colors.white))),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white
                .setDarkModeColor(context, Color.fromARGB(255, 20, 20, 20)),
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 50,
                    child: ListView.builder(
                        controller: _listViewController,
                        itemCount: 100,
                        itemBuilder: (BuildContext context, int index) {
                          return MessageCellView(
                            isMe: index % 2 == 0,
                          );
                        })),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 50,
                  child: Container(
                      color: Colors.white.setDarkModeColor(
                          context, Color.fromARGB(255, 23, 23, 23)),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Image.asset(
                                CommonHelper.isDarkMode(context)
                                    ? "images/icon_xiaoxi_dark.png"
                                    : "images/icon_xiaoxi.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: TextField(
                                  controller: _textFieldController,
                                  style: TextStyle(
                                      color: Colors.black.setDarkModeColor(
                                          context, Colors.white)),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.white.setDarkModeColor(
                                          context,
                                          Color.fromARGB(255, 32, 32, 32)))),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Image.asset(
                                CommonHelper.isDarkMode(context)
                                    ? "images/icon_shuiguo_dark.png"
                                    : "images/icon_shuiguo.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Image.asset(
                                CommonHelper.isDarkMode(context)
                                    ? "images/icon_erke_dark.png"
                                    : "images/icon_erke.png",
                                width: 25,
                                height: 25,
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 44,
          color: Colors.white
              .setDarkModeColor(context, Color.fromARGB(255, 20, 20, 20)),
        ));
  }
}

class MessageCellView extends StatelessWidget {
  bool isMe;
  MessageCellView({Key key, this.isMe = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white
          .setDarkModeColor(context, Color.fromARGB(255, 20, 20, 20)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          textDirection: isMe ? TextDirection.rtl : TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              child: CircularImageView(
                circular: 5,
                url:
                    "http://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1591585873&t=6f3b85b547c315456967ad33f5db371e",
              ),
            ),
            Padding(
              padding:
                  isMe ? EdgeInsets.only(right: 10) : EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  color: Colors.white.setDarkModeColor(
                      context, Color.fromARGB(255, 34, 34, 34)),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      isMe ? "刘怀成你是沙雕吗？" : "对，我是沙雕！",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black.setDarkModeColor(
                              context, Color.fromARGB(255, 246, 246, 246))),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
