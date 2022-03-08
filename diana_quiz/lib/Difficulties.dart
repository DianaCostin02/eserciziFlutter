import 'package:flutter/material.dart';
import 'LabelCSS.dart';
import 'Quiz.dart';

import 'button.dart';

class Difficulties extends StatelessWidget {
  final String UrlPass;
  final String name;

  Difficulties(this.UrlPass,this.name);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Flutter',
     theme:ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: const Color(0x101010),
      ),
      home: DifficultiePage(title: 'Quiz da Sballo', Scelta: UrlPass,nome: name,),
    );
  }
}

class DifficultiePage extends StatefulWidget {
  const DifficultiePage({Key? key, required this.title, required this.Scelta,required this.nome})
      : super(key: key);

  final String title;
  final String Scelta;
  final String nome;

  @override
  State<DifficultiePage> createState() => _DifficultiePageState(Scelta,nome);
}

class _DifficultiePageState extends State<DifficultiePage> {
  _DifficultiePageState(this.scelta,this.nick);
  final String scelta;
  final String nick;

  void Difficulty(String Diffy) {
    setState(() {
      switch (Diffy) {
        case 'Easy':
          switch (scelta) {
            case 'cinema':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=11&difficulty=easy",nick)),
              );
              break;
            case 'books':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=10&difficulty=easy",nick)),
              );
              break;
            case 'games':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=15&difficulty=easy",nick)),
              );
              break;
            case 'computers':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=18&difficulty=easy",nick)),
              );
              break;
            case 'mix':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=9&difficulty=easy",nick)),
              );
              break;
          }

          break;

        case 'Medium':
          switch (scelta) {
            case 'cinema':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=11&difficulty=medium",nick)),
              );
              break;
            case 'books':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=10&difficulty=medium",nick)),
              );
              break;
            case 'games':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=15&difficulty=medium",nick)),
              );
              break;
            case 'computers':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=18&difficulty=medium",nick)),
              );
              break;
            case 'mix':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=9&difficulty=medium",nick)),
              );
              break;
          }

          break;
        case 'Hard':
          switch (scelta) {
            case 'cinema':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=11&difficulty=hard",nick)),
              );
              break;
            case 'books':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=10&difficulty=hard",nick)),
              );
              break;
            case 'games':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=15&difficulty=hard",nick)),
              );
              break;
            case 'computers':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=18&difficulty=hard",nick)),
              );
              break;
            case 'mix':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=9&difficulty=hard",nick)),
              );
              break;
          }

          break;

        default:
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
            new Image.asset('immagini/QUIZGAME.jpg',width:180,height:180),
            LabelPoints(
              'SELEZIONA L ARGOMENTO',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.purple,
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("facile"),
                  onPressed: () {
                    Difficulty("Easy");
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.purple,
                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text("difficile"),
                  onPressed: () {
                    Difficulty("Hard");
                  }),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
