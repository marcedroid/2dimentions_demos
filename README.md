# 2Dimentions

Animaciones de ejemplo utilizando Flare y Nima. [Sitio Web.](https://www.2dimensions.com "Sitio Web.")

## Animaciones [Flare](https://www.2dimensions.com/about-flare "Flare")
Flare es utilizado para animaciones con imágenes vectoriales.
Lo primero es agregar **flare_flutter** y la carpeta de assets al archivo **pubspec.yaml**

```dart
dependencies:
	flare_flutter:

assets:
	- assets/flare/
```

**Nombre de la(s) animación(es)** importante ya que es un parámetro requerido, si no se lo coloca o es incorrecto solo aparece la imagen del primer frame.

![Nombre de la(s) animación(es)](https://user-images.githubusercontent.com/2531939/63736072-83bdd480-c847-11e9-8f02-4c35ce546b8c.png "Nombre de la(s) animación(es)")

### Animación simple - [Flare](https://www.2dimensions.com/a/pollux/files/flare/sushi "Flare")

Utilizar el widget FlareActor para mostrar la animación.
```dart
//Para una animación simple solo se necesita importar flare actor
import 'package:flare_flutter/flare_actor.dart';
...
FlareActor(
	"assets/flare/archivo.flr",
	animation: "nombre_animacion",
	alignment: Alignment.center, //Opcional
	fit: BoxFit.contain, //Opcional
)
```

Código completo en *lib/simple_flare*

------------


### Mix entre animaciones - [Flare](https://www.2dimensions.com/a/JuanCarlos/files/flare/penguin "Flare")

Mix entre 2 animaciones del mismo archivo

```dart
//Importar las depoendencias
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
...
//No olvidar incluir FlareController en la clase
class _PinguinoSliderState extends State<PinguinoSlider> with FlareController
...
FlareActor(
	"assets/flare/Penguin.flr",
	animation: "walk", //Animación por defecto
	...
	controller: this, //with FlareController
)
...
//Inicializa la segunda animación
@override
void initialize(FlutterActorArtboard artboard) {
	_animation = artboard.getAnimation("music_walk");
}
...
//Mix entre amabas animaciones
@override
bool advance(FlutterActorArtboard artboard, double elapsed) {
	_musicTime += elapsed * _speedSlide;
	_animation.apply(_musicTime % _animation.duration, artboard, _musicSlide);
	return true;
}
```

Código completo en *lib/pinguino_slider*

------------

------------



## Animaciones [Nima](https://www.2dimensions.com/about-nima "Nima")
Nima es utilizado para animaciones con imágenes de mapa de bits.
Lo primero es agregar **nima** y la carpeta de assets al archivo **pubspec.yaml**
```dart
dependencies:
	nima:

assets:
	- assets/nima/
```

### Animación simple - [Nima](https://www.2dimensions.com/a/castor/files/nima/robot "Nima")

Utilizar el widget NimaActor para mostrar la animación.

```dart
//Para una animación simple solo se necesita nima actor
import 'package:nima/nima_actor.dart';
...
NimaActor(
	"assets/nima/Robot.nma",
	animation: "nombre_animacion",
	alignment: Alignment.center, //Opcional
	fit: BoxFit.cover, //Opcional
)
```

Código completo en *lib/simple_nima*

------------

### Cambio entre animaciones - [Nima](https://www.2dimensions.com/a/JuanCarlos/files/nima/hop "Nima")

En Nima desactivar el loop en las animaciones que solo deben correr una vez, como la de **jump** y **attack**.

```dart
//Importar nima
import 'package:nima/nima_actor.dart';
...
//configurar la animación inicial (La clase debe extender de StatefullWidget)
String _animationName = "idle";
...
//Animación principal
NimaActor(
	"assets/nima/Hop/Hop.nma",
	animation: _animationName,
	alignment: Alignment.center,
	fit: BoxFit.contain,
	mixSeconds: 0.5,
	completed: (String animationName){
		//La animación por default es infinita y no activa este evento
		setState(() {
			_animationName = "idle";
		});
	},
)
...
//Cambio de animaciones
RaisedButton(
	...
	onPressed: (){
		setState(() {
			_animationName = "attack";
		});
	},
)
```

Código completo en *lib/cambio_animaciones*

------------

------------

## Créditos Artistas
- [Guido Rosso](https://www.2dimensions.com/a/pollux/files/recent/all "Guido Rosso")
- [Luigi Rosso](https://www.2dimensions.com/a/castor/files/recent/all "Luigi Rosso")
- [JcToon](https://www.2dimensions.com/a/JuanCarlos/files/recent/all "JcToon")


------------

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



