import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  // Matrix4 _transformSkew = Matrix4.skewX(0.3)..rotateZ(12.0);
  Matrix4 _transformRotation = Matrix4.rotationZ(12.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      // debugShowCheckedModeBanner: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
            child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          transform: _transformRotation,
          duration: Duration(seconds: 2),
          curve: Curves.easeInOutBack,
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _cambiarForma,
          child: Icon(Icons.play_arrow_outlined),
        ),
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _heigth = random.nextInt(300).toDouble();

      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      // _transformSkew = Matrix4.skewX(random.nextInt(70).toDouble())
      //   ..rotateZ(random.nextInt(360).toDouble());
      _transformRotation = Matrix4.rotationZ(random.nextInt(45).toDouble());

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
