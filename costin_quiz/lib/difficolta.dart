// ***COSTIN DIANA 5B IA 28/02/2022***
import 'main.dart';
import 'package:flutter/material.dart';
import 'sequenza.dart';

class Levels extends StatelessWidget {
  
  final String nickname;

  Levels(this.nickname);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Flutter',
     theme:ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: const Color(0x101010),
      ),
      home: LevelPage(titolo: 'Quiz da Sballo', nome: nickname,),
    );
  }
}


class LevelPage extends StatefulWidget {
  const LevelPage({Key? key, required this.titolo, required this.nome})
      : super(key: key);

  final String titolo;
  
  final String nome;

  @override
  State<LevelPage> createState() => _LevelPageState(nome);
}

class _LevelPageState extends State<LevelPage> {
  _LevelPageState(this.nick);

  final String nick;

  void Difficulty(String x) {
    setState(() {
      switch (x) {
        case 'Easy':  
            
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=9&difficulty=easy",nick)),
              );
         
          break;

        case 'Medium':
          
           
          
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=9&difficulty=medium",nick)),
              );
              

          break;
        case 'Hard':
         
            
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyQuiz(
                        "https://opentdb.com/api.php?amount=10&category=9&difficulty=hard",nick)),
              );
              break;
          

        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titolo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           
            Text(
              "SELEZIONA IL LIVELLO DI DIFFICOLTA",
              style: TextStyle
                (
                  fontSize: 20,
                  color: Colors.red,
                  fontFamily: 'Raleway'
                ),
              textAlign: TextAlign.center,
            ),
            
            Container(
              width: 280,
              child: RaisedButton(
                  color: Colors.red,
                 
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
                  color: Colors.red,
                 
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
