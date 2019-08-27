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

### Animación simple - Flare
Para una animación simple solo se necesita importar flare actor.

`import 'package:flare_flutter/flare_actor.dart';`

Utilizar el widget FlareActor para mostrar la animación.
```dart
FlareActor(
	"assets/flare/archivo.flr",
	animation: "nombre_animacion",
	alignment: Alignment.center, //Opcional
	fit: BoxFit.contain, //Opcional
)
```

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

### Animación simple - Nima

Para una animación simple solo se necesita nima actor.

`import 'package:nima/nima_actor.dart';`

Utilizar el widget NimaActor para mostrar la animación.

```dart
NimaActor(
	"assets/nima/Robot.nma",
	animation: "nombre_animacion",
	alignment: Alignment.center, //Opcional
	fit: BoxFit.cover, //Opcional
)
```

------------

## Créditos Artistas
- [Guido Rosso](https://www.2dimensions.com/a/pollux/files/recent/all "Guido Rosso")
- [Luigi Rosso](https://www.2dimensions.com/a/castor/files/recent/all "Luigi Rosso")


------------

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
