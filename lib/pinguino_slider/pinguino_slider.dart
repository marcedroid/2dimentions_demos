import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';

//Constants
import '../constants.dart' as own;

class PinguinoSlider extends StatefulWidget {
  @override
  _PinguinoSliderState createState() => _PinguinoSliderState();
}

class _PinguinoSliderState extends State<PinguinoSlider> with FlareController {
  bool _isPaused = false;
  double _musicSlide = 0.5;
  double _speedSlide = 1.0;
  double _musicTime = 0.0;
  ActorAnimation _animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("titulo"),
      ),

      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: FlareActor(
              own.PENGUIN,
              animation: own.PENGUIN_WALK,
              alignment: Alignment.center,
              fit: BoxFit.cover,
              isPaused: _isPaused,
              controller: this,
            )
          ),

          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.black.withOpacity(0.5),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Música",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0
                        )
                      ),
                      Slider(
                        value: _musicSlide,
                        min: 0,
                        max: 1,
                        onChanged: (double value){
                          setState(() {
                            _musicSlide = value;
                          });
                        }
                      ),

                      Text(
                        "Velocidad",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0
                        )
                      ),
                      Slider(
                        value: _speedSlide,
                        min: 0.2,
                        max: 3.0,
                        onChanged: (double value){
                          setState(() {
                            _speedSlide = value;
                          });
                        }
                      ),

                      new Text("Pausa",
                          style: TextStyle(color: Colors.white)),
                      new Checkbox(
                        value: _isPaused,
                        onChanged: (bool value) {
                          setState(() {
                            _isPaused = value;
                          });
                        },
                      )
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _musicTime += elapsed * _speedSlide;
    _animation.apply(_musicTime % _animation.duration, artboard, _musicSlide);
    return true;
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    _animation = artboard.getAnimation(own.PENGUIN_MUSIC_WALK);
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}
}
