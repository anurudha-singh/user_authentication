import 'package:flutter/material.dart';
import 'package:user_authentication/screens/signin.dart';
import 'package:user_authentication/screens/signup.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome Screen'),
        ),
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text('Log In'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                      },
                      child: Text(
                        'Register',
                      ))
                ])));
  }
}
