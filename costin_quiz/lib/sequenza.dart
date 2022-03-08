// ***COSTIN DIANA 5B IA 28/02/2022***
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'bottone.dart';
import 'domande.dart';
import 'stampatesto.dart';
import 'final.dart';



class MyQuiz extends StatelessWidget {
  

 final String link;
 final String nickname;
 
  MyQuiz(this.link,this.nickname);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Quiz',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color(0x101010),
      ),
      home: MyQuizPage(titolo:'Quiz da Sballo',link: link,nickname: nickname,),
    
    );
  }
}

class MyQuizPage extends StatefulWidget {
  MyQuizPage({Key? key, required this.titolo, required this.link,required this.nickname}) : super(key: key);

  final String titolo;
  final String link;
  final String nickname;

  @override
  _MyQuizPageState createState() => _MyQuizPageState(link,nickname);
}

class _MyQuizPageState extends State<MyQuizPage> {

 _MyQuizPageState(this.sito,this.nickname);
  final String sito;
  final String nickname;
  
 
  double giust=0;


  List<Question>? _domande = null;
  List<String>? _check = null; 
  var _conta = 0;


// Go to next question:
  void next() {
   // int pointAcc;
    double trueConta;
    double falseConta;
    int lung= _domande!.length;
    double statistica;
    
    if (_domande == null || _domande!.length == 0) return;
    setState(() {
      if (_conta < _domande!.length - 1)
        _conta++;
      else {
        _conta = 0;
       
        trueConta=giust;
        falseConta=lung-trueConta;
        statistica=((giust/lung)*100);
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text('Risultati'),
                  content: Text("quiz terminato"),
                  actions: <Widget>[
                    FlatButton(
                        autofocus: true,
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(ctx).pop(true);
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>FinalPage(trueConta,falseConta,nickname,statistica)),);
                          
                          //doGet();
                        })
                  ],
                ));
      }

      // update answers:
      _check = List.from(_domande![_conta].incorrect);
      _check!.add(_domande![_conta].correct);
      _check!.shuffle();
    });
  }

  
  void doGet() {
  
    giust=0;
    print("Request"+sito);
    http.get(Uri.parse(sito)).then((response) {
      var jsondata = json.decode(response.body);
      var questions = jsondata['results'];
      print("Response"+questions.toString());
 setState(() {
        _domande =
            questions.map<Question>((val) => Question.fromJson(val)).toList();
        // initialize answer list:
        _check = List.from(_domande![_conta].incorrect);
        _check!.add(_domande![_conta].correct);
        _check!.shuffle();
      });

     
    });
  }

  // Check if the answer is correct and display an AlertDialog:
  void _checkAnswer(String ans) {
    String msg =
        "sbagliato,risposta corretta: " + _domande![_conta].correct;
    if (ans == _domande![_conta].correct) {
      msg = "grande!, è giusto: " +
          _domande![_conta].correct;
     
      giust++;
    }

    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('Risultato'),
              content: Text(msg),
              actions: <Widget>[
                FlatButton(
                  autofocus: true,
                  child: Text('OK'),
                  onPressed: () => Navigator.of(ctx).pop(true),
                )
              ],
            ));
  }


  List<Widget> _buildAnswerButtons(List<String> ans) {
    return ans
        .map<Button>((e) => Button(
            azione: () => _checkAnswer(e),
            testo: e,
            colore: Colors.red))
        .toList();
  }

 
  void initState() {
    doGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titolo),
      ),
      body: Column(
        children: [
        
          
          StampaText(
            (_domande != null && _domande![0] != null)
                ? _domande![_conta].question
                : 'none',
          ),
          if (_check != null && _buildAnswerButtons(_check!) != null)
            ..._buildAnswerButtons(_check!)
          else
            const CircularProgressIndicator(),
          SizedBox(
            height: 30,
          ),
          Button(
              azione: next,
              testo: 'Prossima domanda-->',
              colore: Colors.red),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Text
            (
                "Giocatore: "+nickname,
                style: TextStyle
                (
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Raleway'
                ),
              textAlign: TextAlign.center,
             ),
        //  LabelPoints("Punti"),
        //  TextPoints("",points.toString(),"","")
        ],
      ),
    );
  }
}
