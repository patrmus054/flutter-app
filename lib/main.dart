import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

bool flag = false;
String result = oldText;
String oldText = "HELLO";
String newText = "BYE";

class MyApp extends StatefulWidget {
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<MyApp> {
  void _change() {
    if (flag) {
      result = newText;
      flag = false;
    } else {
      result = oldText;
      flag = true;
    }
    setState(() => result);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Flutter App',
      home: new Scaffold(
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                result,
                style: new TextStyle(
                  fontSize: 25.0,
                  color: new Color(0xFF8B1122),
                  fontWeight: FontWeight.w600,
                ),
              ),
              new RaisedButton(
                child: new Text('Change text',
                    style: new TextStyle(
                      fontSize: 20.0,
                    )),
                color: new Color(0xFF8B1122),
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                elevation: 10.0,
                splashColor: Colors.white70,
                onPressed: _change,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
