import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipo1(),
          _cardTipo2(),
          SizedBox(height: 10.0),
          _cardTipo3(),
          SizedBox(height: 10.0),
          _cardTipo4(),
          SizedBox(height: 10.0),
          _cardTipo3(),
          SizedBox(height: 10.0),
          _cardTipo4(),
          SizedBox(height: 10.0),
          _cardTipo3(),
          SizedBox(height: 10.0),
          _cardTipo4(),
          SizedBox(height: 10.0),
          _cardTipo3(),
          SizedBox(height: 10.0),
          _cardTipo4(),
          SizedBox(height: 10.0),
          _cardTipo3(),
          SizedBox(height: 10.0),
          _cardTipo4(),
          SizedBox(height: 10.0),
          _cardTipo3(),
          SizedBox(height: 10.0),
          _cardTipo4(),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Center(
      child: Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.album,
                color: Colors.blue,
              ),
              title: Text('Algun titulo mamalon'),
              subtitle: Text('Musica de algun autor, letra robada'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Comprar'),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 8,
                ),
                TextButton(
                  child: const Text('Escuchar'),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 8,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
              leading: Icon(Icons.album, color: Colors.blue),
              title: Text('Otro titulo mamalon'),
              subtitle: Text('Musica de otro autor, letra propia')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Comprar')),
              TextButton(onPressed: () {}, child: const Text('Escuchar'))
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo3() {
    return Card(
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 200.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //     image: NetworkImage(
          //         'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg')),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('No se que poner '))
        ],
      ),
    );
  }

  Widget _cardTipo4() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('No se que poner '))
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 20.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
    );
  }
}
