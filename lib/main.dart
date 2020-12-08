import 'package:flutter/material.dart';
import 'package:loginwithbloc/src/blocs/provider.dart';
// from project
import 'src/screens/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
