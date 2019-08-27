import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

//Constants
import '../constants.dart' as own;

class SimpleNima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(own.MENU_SIMPLE_NIMA),
      ),

      body: Center(
        child: NimaActor(
          own.ROBOT,
          animation: own.ROBOT_ANIM,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
