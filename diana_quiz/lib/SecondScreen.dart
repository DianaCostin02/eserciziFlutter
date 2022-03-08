import 'package:flutter/material.dart';
import 'Category.dart';
import 'PointsBox.dart';
import 'main.dart';

class SecondRoute extends StatelessWidget {
  //const SecondRoute({Key? key}) : super(key: key);
  final int points;
  final double right;
  final double wrong;
  final String nickname;
  final double Perc;
  SecondRoute(this.points, this.right, this.wrong,this.nickname,this.Perc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Risultati:"),
      ),
      body: Column(
        
        children: [
          // TextPoints("Right answers:"+right.toString(),"Wrong answers:"+wrong.toString(),"Points:"+points.toString(),""),
          SizedBox(
            height: 30,
          ),
          Text(
            "Giocatore: " + nickname,
            style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Risposta Giusta: " + right.toString(),
            style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize:  20),
          ),

          SizedBox(
            height: 30,
          ),
          Text(
            "Risposta Sbagliata: " + wrong.toString(),
            style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize:  20),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Punti: " + points.toString(),
            style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize:  20),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Percentuale risposte giuste: " + (Perc.toString()+"%"),
            style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize:  20),
          ),
          SizedBox(
            height: 30,
          ),
        
          ElevatedButton(
            
            onPressed: () {
             // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Text("RIGIOCA!"),
          ),
          Row(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.center),
        ],
      ),
    );
  }
}
