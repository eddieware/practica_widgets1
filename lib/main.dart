import 'package:flutter/material.dart';
import 'package:practica_widgets1/screens/widgets_pt1.dart';

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
      body: Center(child: myLayoutWidget()),
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
              title: Text('Campos de texto'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);

                final route1 =
                    MaterialPageRoute(builder: (context) => WidgetsPt1());

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

  Widget myLayoutWidget() {
    // wrap everything in a purple container
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple[900],
        border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(3.0)),
      ),
      // column of three rows
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
              ),
              Text(
                'Example Container/Column/Row/Text',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),

          // second row (single item)
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 0,
            ),
            child: Text(
              'Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

          // third row
          Row(
            children: [
              Text(
                'EXPLORE BEAMS',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
