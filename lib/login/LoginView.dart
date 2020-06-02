import 'package:flutter/material.dart';
import 'package:imdemo/HomePage/HomePage.dart';
import '../extension/SRExtension.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.setDarkModeColor(context, Colors.black),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text("登录",
                        style: TextStyle(
                          color: Colors.black
                              .setDarkModeColor(context, Colors.white),
                          fontSize: 30,
                        )),
                  ),
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: "账号",
                        labelStyle: TextStyle(
                            color: Colors.black
                                .setDarkModeColor(context, Colors.white)),
                        hintText: "请输入账号"),
                  ),
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        labelText: "密码",
                        labelStyle: TextStyle(
                            color: Colors.black
                                .setDarkModeColor(context, Colors.white)),
                        hintText: "请输入密码"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                      child: Container(
                        alignment: Alignment.center,
                          width: double.infinity,
                          height: 60,
                          color: Colors.blue,
                          child: Text("登录",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white))),
                    ),
                  ),
                ],
              )),
        ));
  }
}
