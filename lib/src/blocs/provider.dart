import 'package:flutter/material.dart';
// from project
import 'bloc.dart';

class Provider extends InheritedWidget{

  Provider({Key key, Widget child}) : super(key: key, child: child);

  final bloc = Bloc();
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc; // find the provider class by going to the parent.
  }
}