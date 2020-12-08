import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginwithbloc/src/blocs/provider.dart';
// from project
import '../../src/blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(40.0),
      child: Column(
        children: [
          StreamBuilder(
            stream: bloc.email,
            builder: (context, snapshot) {
              return TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'abc@gmail.com',
                  labelText: 'Enter Email Id',
                  errorText: snapshot.error,
                ),
//                onChanged: (newValue){
//                  bloc.changeEmail(newValue);
//                },
              onChanged: bloc.changeEmail, // this code is equivalent to above one.
              );
            }
          ),
          StreamBuilder(
            stream: bloc.password,
            builder: (context, snapshot) {
              return TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'password here',
                  labelText: 'Enter Password',
                  errorText: snapshot.error,
                ),
                onChanged: bloc.changePassword,
              );
            }
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

