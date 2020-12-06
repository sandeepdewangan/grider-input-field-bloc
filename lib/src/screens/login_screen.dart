import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'abc@gmail.com',
              labelText: 'Enter Email Id',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'password here',
              labelText: 'Enter Password',
            ),
          ),
          RaisedButton(
            child: Text('Press me'),
              onPressed: (){},
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}

