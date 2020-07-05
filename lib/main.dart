import 'package:flutter/material.dart';
import 'package:practica_widgets1/screens/widgets_pt1.dart';
import 'package:practica_widgets1/screens/widgets_pt2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Ejemplo Navigation Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('EXAMPLE WITH DRAWER')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Ejemplo de Navigation Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                'Campos de texto (Pt1)',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
              onTap: () {
                final route1 =
                    MaterialPageRoute(builder: (context) => WidgetsPt1());

                Navigator.push(context, route1);
              },
            ),
            ListTile(
              title: Text(
                'LayOuts (Pt2)',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
              onTap: () {
                final route1 =
                    MaterialPageRoute(builder: (context) => Widgets_Pt2());

                Navigator.push(context, route1);
              },
            ),
            // ListTile(
            //   title: Text('Tarjetas'),
            //   onTap: () {
            //     final route2 =
            //         MaterialPageRoute(builder: (context) => CardPage());

            //     Navigator.push(context, route2);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
