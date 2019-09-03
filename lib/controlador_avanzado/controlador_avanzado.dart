import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

//Controller
import 'teddy_controller.dart';

//Constants
import '../constants.dart' as owl;

class ControladorPersonalizado extends StatefulWidget {
  @override
  _ControladorPersonalizadoState createState() => _ControladorPersonalizadoState();
}

class _ControladorPersonalizadoState extends State<ControladorPersonalizado> {
  TeddyController _teddyController;

  @override
  void initState() {
    _teddyController = TeddyController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(owl.MENU_CONTROLADOR_PERSONALIZADO)
      ),

      body: Center(
        child: Center(
          child: FlareActor(
            owl.TEDDY,
            animation: owl.TEDDY_IDLE,
            fit: BoxFit.contain,
            alignment: Alignment.center,
            controller: _teddyController,
          ),
        )
      ),
    );
  }
}
