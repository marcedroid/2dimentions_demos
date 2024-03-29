import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

//Constants
import '../constants.dart' as own;

class SimpleFlare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(own.MENU_SIMPLE_FLARE),
      ),

      body: Center(
        child: FlareActor(
          own.SUSHI,
          animation: own.SUSHI_ANIM,
          alignment: Alignment.center,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
