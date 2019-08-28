import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

//Constants
import '../constants.dart' as own;

class CambioAnimaciones extends StatefulWidget {
  @override
  _CambioAnimacionesState createState() => _CambioAnimacionesState();
}

class _CambioAnimacionesState extends State<CambioAnimaciones> {
  String _animationName = own.HOP_IDLE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(own.MENU_CAMBIO_ANIMACIONES),
      ),

      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.80,
            child: NimaActor(
              own.HOP,
              animation: _animationName,
              alignment: Alignment.center,
              fit: BoxFit.contain,
              mixSeconds: 0.5,
              completed: (String animationName){
                setState(() {
                  _animationName = own.HOP_IDLE;
                });
              },
            )
          ),

          Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "Animación - ${own.HOP_ATTACK}",
                    ),
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: (){
                      setState(() {
                        _animationName = own.HOP_ATTACK;
                      });
                    },
                  ),

                  RaisedButton(
                    child: Text("Animación - ${own.HOP_JUMP}"),
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: (){
                      setState(() {
                        _animationName = own.HOP_JUMP;
                      });
                    },
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
