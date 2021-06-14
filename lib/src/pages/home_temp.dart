import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  // lista estatica de elementos
  // List<Widget> _crearItems() {
  //   final List<Widget> lista = [];

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     lista..add(tempWidget)..add(Divider());
  //   }
  //   return lista;
  // }

  // lista estatica corta
  List<Widget> _crearItemsCorta() {
    var widgets = opciones
        .map((item) => Column(
              children: [
                ListTile(
                  title: Text(item + '!'),
                  subtitle: Text('Cualquier cosa'),
                  leading: Icon(Icons.account_balance_wallet),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {},
                ),
                Divider(),
              ],
            ))
        .toList();

    return widgets;
  }
}
