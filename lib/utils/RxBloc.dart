import 'dart:async';

import 'package:flutter/material.dart';

import 'ISimpleDisposable.dart';
import 'StateProvider.dart';

/// Example BLoC
class ExampleBloc with StateProvider implements IDisposable  {
static const EXAMPLE_STATE_1 = "EX1";
static const EXAMPLE_STATE_2 = "EX2";

Timer _timer;

void init() {
  setState(EXAMPLE_STATE_1);

  _timer = new Timer(const Duration(seconds: 3), () {
    _timer = null;
    setState(EXAMPLE_STATE_2);
  });
}

@override
void dispose() {
  if (_timer != null) {
    _timer.cancel();
    _timer = null;
  }
}
}

class ExampleWidget extends StatelessWidget {
  final bloc = ExampleBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.stateOut,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        // build widget by state
      },
    );
  }
}