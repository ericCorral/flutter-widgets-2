import 'package:flutter/material.dart';

import 'package:componentes/utils/icono_string_util.dart';
import 'package:componentes/src/providers/menu_provider.dart';

// import para ruta alternativa con Navigator.push()
// import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compontentes App'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> lista = [];

    data.forEach((item) {
      final widgetTemp = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, item['ruta']);

          // Ruta alternativa para navegar a una pagina
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        },
      );
      lista..add(widgetTemp)..add(Divider());
    });

    return lista;
  }

  // List<Widget> _listItems2(List<dynamic> data, BuildContext context) {
  //   final widgeTemp = data
  //       .map((item) => ListTile(
  //             title: Text(item['texto']),
  //             leading: getIcon(item['icon']),
  //             trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
  //             onTap: () {
  //               final route =
  //                   MaterialPageRoute(builder: (context) => AlertPage());
  //               Navigator.push(context, route);
  //             },
  //           ))
  //       .toList();
  //   return widgeTemp;
  // }
}
