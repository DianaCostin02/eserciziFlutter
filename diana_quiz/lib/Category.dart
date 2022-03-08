import 'package:flutter/material.dart';
import 'Difficulties.dart';
import 'LabelCSS.dart';
import 'Quiz.dart';
import 'button.dart';

class MyCategory extends StatelessWidget {
  final String UrlPass;

  MyCategory(this.UrlPass);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz simpatico',
     theme:ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: const Color(0x101010),
      ),
      home: MyCategoryPage(title: 'Quiz da Sballo', Nick: UrlPass),
    );
  }
}

class MyCategoryPage extends StatefulWidget {
  const MyCategoryPage({Key? key, required this.title, required this.Nick})
      : super(key: key);

  final String title;
  final String Nick;

  @override
  State<MyCategoryPage> createState() => _MyCategoryPageState(Nick);
}

class _MyCategoryPageState extends State<MyCategoryPage> {
  
  String nick;
  _MyCategoryPageState(this.nick);
  

  void Link(String Category) {
    setState(() {
      switch (Category) {
        case 'cinema':
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Difficulties("cinema",nick)),
          );

          break;
        case 'games':
          Navigator.push(
            context,
           MaterialPageRoute(builder: (context) => Difficulties("games",nick)),
          );

          break;
        case 'computers':
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Difficulties("computers",nick)),
          );

          break;

        case 'books':
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Difficulties("books",nick)),
          );

          break;

        case 'mix':
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Difficulties("mix",nick)),
          );
        break;

      }
    });
  }

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
            new Image.asset('immagini/QUIZGAME.png',width:180,height:180), 
            LabelPoints(
              'SELEZIONA LA CATEGORIA',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.red,
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("Cinema"),
                  onPressed: () {
                    Link("cinema");
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.red,
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("Videogames"),
                  onPressed: () {
                    Link("games");
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.red,
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("Books"),
                  onPressed: () {
                    Link("books");
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.red,
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("Computers"),
                  onPressed: () {
                    Link("computers");
                  }),
            ),
             SizedBox(
              height: 10,
            ),
             Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.red,
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("Mix"),
                  onPressed: () {
                    Link("mix");
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
