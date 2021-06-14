import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Alert Page'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Mostrar Alerta'),
            // color: Colors.blue,
            // textColor: Colors.white,
            // shape: StadiumBorder(),
            onPressed: () => _mostrarAlert(context),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_to_home_screen_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la caja de alerta'),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancel')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Ok'))
          ],
        );
      },
      barrierDismissible: true,
    );
  }
}
