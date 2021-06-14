import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamano de la imagen',
        // divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_bloquearCheckBox)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheckBox,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquearCheckBox = valor!;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheckBox,
      onChanged: (valor) {
        setState(() {
          _bloquearCheckBox = valor!;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('http://pngimg.com/uploads/batman/batman_PNG111.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloquearCheckBox,
        onChanged: (valor) {
          setState(() {
            _bloquearCheckBox = valor;
          });
        });
  }
}
