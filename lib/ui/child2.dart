import 'package:flutter/material.dart';
import 'package:flutterblocexample/bloc/color_bloc.dart';
import 'package:flutterblocexample/core/generic_bloc_provider.dart';

class Child2 extends StatelessWidget {

  ColorBloc colorBloc;

  @override
  Widget build(BuildContext context) {
    //geeting the instance of our model created at Parent
    colorBloc = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          child: StreamBuilder(
            initialData: Colors.blue,
            stream: colorBloc.colorStream,
            builder: (BuildContext context, snapShot) => Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                color: snapShot.data,
              ),
            ),
          ),
        ),
      ],
    );
  }
}