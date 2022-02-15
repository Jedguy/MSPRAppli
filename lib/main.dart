import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //test ceci est un test
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: BaseApp(),
      routes: <String, WidgetBuilder>{
        '/viewListMaterial' : (context) => viewListMaterial(),
        '/viewListAgent' : (context) => viewListAgent(),
        '/viewAgent' : (context) => viewAgent(),
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    // ignore: dead_code
    return Scaffold(
      appBar:  AppBar(title: Text("MSPR Application"),),
      body: Center(
        child:Column(
          children: <Widget>[
            FlatButton(
              child: Text("Liste du matériel"),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/viewListMaterial');
              },
            ),
            FlatButton(
               child: Text("Liste des agents "),
               color: Colors.lightBlueAccent,
               onPressed: () {
                 Navigator.pushNamed(context, '/viewListAgent');
               },
        ),
            FlatButton(
              child: Text("Descriptif de l'agent"),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/viewAgent');
              },
            ),
          ],
        ),
      )
    );
  }
}

class viewListMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Liste du matériel"),),
    );
  }
}

class viewListAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Liste des agents"),),
    );
  }
}

class viewAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Descriptif de l'agent"),),
    );
  }
}
