import 'package:flutter/material.dart';
import 'Home.dart';

class LoginSystem extends StatefulWidget {
  @override
  _LoginSystemState createState() => _LoginSystemState();
}

class _LoginSystemState extends State<LoginSystem> {
  //EMAIL DAN PASWORD YANG DI SETTING
  static String email = "admin";
  static String password = "admin";

  alertPassword(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.grey,
            title: Center(child: Text("Password Salah")),
            content:
                Text('Password atau Email Salah!', textAlign: TextAlign.center),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('ok')),
              TextButton(
                  onPressed: () {
                    setState(() {});
                    //useProfile.changeData();
                  },
                  child: Text('Regist'))
            ],
          );
        });
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Selamat Datang', style: TextStyle()),
        backgroundColor: Colors.red,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'NgodingKuy',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'masuk untuk melanjutkan',
                    style: TextStyle(fontSize: 15),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: Colors.blue,
                child: Text('Forgot Password'),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Login'),
                    onPressed: () {
                      if (nameController.text == email &&
                          passwordController.text == password) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Home(nameController.text)));
                      } else {
                        alertPassword(context);
                      }
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )),
              Container(
                  child: Row(
                children: <Widget>[
                  Text('Does not have account?'),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )),
              Padding(
                padding: EdgeInsets.only(
                  top: 15.0,
                ),
              ),
              Container(
                  child: Row(
                children: <Widget>[
                  Text('buat masuk email : admin , pass: admin'),
                ],
              ))
            ],
          )),
    );
  }
}
