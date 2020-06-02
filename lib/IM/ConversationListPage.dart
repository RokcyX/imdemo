import 'package:flutter/material.dart';
import 'package:imdemo/IM/ConversationDetailPage.dart';
import 'package:imdemo/common/view/CircularImageView.dart';
import '../extension/SRExtension.dart';

class ConversationListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConversationListPage();
}

class _ConversationListPage extends State<ConversationListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white
            .setDarkModeColor(context, Color.fromARGB(255, 20, 20, 20)),
        title: Text(
          "IM Demo",
          style: TextStyle(
              color: Colors.black.setDarkModeColor(
                  context, Color.fromARGB(255, 246, 246, 246))),
        ),
      ),
      body: Container(
        color: Colors.white
            .setDarkModeColor(context, Color.fromARGB(255, 27, 27, 27)),
        child: ListView.builder(
            itemCount: 100,
            itemExtent: 80,
            itemBuilder: (BuildContext context, int index) {
              return _conversationItem(index);
            }),
      ),
    );
  }

  Widget _conversationItem(int index) {
    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ConversationDetailPage();
          }));
        },
        child: Container(
          color: Colors.white
              .setDarkModeColor(context, Color.fromARGB(255, 27, 27, 27)),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
                child: Row(
                  children: <Widget>[
                    CircularImageView(
                      url:
                          "http://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1591506154&t=dd6123d64111acefd9c1e35841997a84",
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Text("会话名称会话名",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black.setDarkModeColor(
                                              context,
                                              Color.fromARGB(
                                                  255, 246, 246, 246)))),
                                ),
                                Text(
                                  "2020-05-31",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey.setDarkModeColor(
                                          context,
                                          Color.fromARGB(255, 79, 79, 79))),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Expanded(
                                    child: Text("最新消息",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.grey.setDarkModeColor(
                                                context,
                                                Color.fromARGB(
                                                    255, 79, 79, 79)))),
                                  ),
                                  Text(
                                    "私聊",
                                    style: TextStyle(
                                        color: Colors.orange, fontSize: 11),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 10,
                bottom: 0,
                right: 10,
                height: 1,
                child: Container(
                  color: Colors.black.setDarkModeColor(
                      context, Color.fromARGB(255, 27, 27, 27)),
                ),
              ),
            ],
          ),
        ));
  }
}
