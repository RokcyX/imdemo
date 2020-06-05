import 'package:dgg_flutter_loading/dgg_flutter_loading.dart';
import 'package:dgg_flutter_toast/dgg_flutter_toast.dart';
import 'package:flutter/material.dart';
import 'package:imdemo/homepage/HomePage.dart';
import 'package:imdemo/network/NetworkHelper.dart';
import '../extension/SRExtension.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  TextEditingController _accountController = TextEditingController(text: '18728482335');
  TextEditingController _passwordController = TextEditingController(text: '123456');

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
                    controller: _accountController,
                    autofocus: true,
                    style: TextStyle(
                      color: Colors.black.setDarkModeColor(context, Colors.white) 
                    ),
                    decoration: InputDecoration(
                        labelText: "账号",
                        labelStyle: TextStyle(
                            color: Colors.black
                                .setDarkModeColor(context, Colors.white)),
                        hintText: "请输入账号"),
                  ),
                  TextField(
                    controller: _passwordController,
                    autofocus: true,
                    style: TextStyle(
                      color: Colors.black.setDarkModeColor(context, Colors.white) 
                    ),
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
                      onTap: _doLogin,
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

  _doLogin() async{
    String account = _accountController.text;
    String password = _passwordController.text;
    if (account.length < 1 || password.length < 1) {
      showToast(context, "请输入登录信息");
      return;
    }
    DGGLoading.show(context);
    var result = await NetworkHelper.login(account: account, password: password);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
  }
}
