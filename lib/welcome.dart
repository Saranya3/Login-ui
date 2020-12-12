import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('images/bgimg.jpg'),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: RaisedButton(
                child: Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                elevation: 10.0,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(15.0),
                color: Colors.yellow[200],
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: RaisedButton(
                child: Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                elevation: 10.0,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(15.0),
                color: Colors.yellow[200],
                onPressed: () {
                  Navigator.pushNamed(context, RegisterScreen.id);
                }),
          ),
        ],
      ),
    );
  }
}
