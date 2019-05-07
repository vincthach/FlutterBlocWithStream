import 'package:flutter/material.dart';
import 'package:flutterblocexample/bloc/color_bloc.dart';
import 'package:flutterblocexample/core/generic_bloc_provider.dart';
import 'package:flutterblocexample/ui/child1.dart';
import 'package:flutterblocexample/ui/child2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocDemo(),
    );
  }
}

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code = ColorBloc();
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "BLoC Architecture",
      )),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: BlocProvider(
            bloc: code,
            child: Column(
              children: <Widget>[
                Child1(),
                Child2(),
                RaisedButton(
                    child: Text("Change Color",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {

                      code.changeColor();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
