import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String name;
  Home(this.name);
  @override
  _HomeState createState() => _HomeState(this.name);
}

class _HomeState extends State<Home> {
  final String name;
  _HomeState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
              onPressed: () {
                //do something
              },
            );
          },
        ),
        title: Text(
          "Halo " + name,
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
            onPressed: () {
              //do something
            },
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
        ),
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'img/images.jpeg',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'img/android.jpg',
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _button("Belajar Android"),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'img/bootstrap.jpg',
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _button("Belajar Boostrap"),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'img/html.jpg',
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _button("Belajar HTML"),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'img/jquery.jpg',
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _button("Belajar JQuery"),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'img/js.jpg',
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _button("Belajar JavaScript"),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'img/php.jpg',
              width: 200.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _button("Belajar PHP"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Riwayat'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Job'),
        ],
      ),
    );
  }

  Widget _button(text) => RaisedButton(onPressed: () {}, child: Text(text));
}
