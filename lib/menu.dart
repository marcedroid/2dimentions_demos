import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Pages
import 'simple_flare/simple_flare.dart';
import 'simple_nima/simple_nima.dart';
import 'cambio_animaciones/cambio_animaciones.dart';
import 'pinguino_slider/pinguino_slider.dart';
import 'controlador_avanzado/controlador_avanzado.dart';

//Constants
import 'constants.dart' as own;


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2 Dimentions - Demos")
      ),

      body: Container(
        child: ListView(
          children: <Widget>[
            menuItem(own.MENU_SIMPLE_FLARE, context, SimpleFlare()),
            menuItem(own.MENU_SIMPLE_NIMA, context, SimpleNima()),
            menuItem(own.MENU_CAMBIO_ANIMACIONES, context, CambioAnimaciones()),
            menuItem(own.MENU_PINGUINO, context, PinguinoSlider()),
            menuItem(own.MENU_CONTROLADOR_PERSONALIZADO, context, ControladorPersonalizado())
          ],
        ),
      ),
    );
  }
}

Widget menuItem (String text, BuildContext context, Widget widget){
  return RaisedButton(
    color: Colors.blue,
    textColor: Colors.white,
    child: Text(text),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => widget
      ));
    },
  );
}
