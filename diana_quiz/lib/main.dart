import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Difficulties.dart';
import 'LabelCSS.dart';

import 'Category.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
Widget build(BuildContext context)
 {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Quiz da Sballo'),
      theme:ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: const Color(0x101010),
      ),
    
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset('immagini/QUIZGAME.png', width: 520, height: 390),
            
            SizedBox(
              height: 20,
            ),
            LabelPoints(
              'Inserisci il tuo nickname gay',
            ),
            Container(
             
                width: 200.0,
                height: 50.0,
                color: Colors.white,
                child: TextField(onChanged: (String str) {
                  name = str;
                })),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MyCategory(name)),
                );
              },
              child: Text("Inizia!"),
            ),
          ],
        ),
      ),
    );
  }
}
