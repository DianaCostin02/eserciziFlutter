// ***COSTIN DIANA 5B IA 28/02/2022***
import 'package:flutter/material.dart';

import 'main.dart';

class FinalPage extends StatelessWidget {
  //const SecondRoute({Key? key}) : super(key: key);

  final double giust;
  final double sbagliat;
  final String nickname;
  final double statistica;
  FinalPage( this.giust, this.sbagliat,this.nickname,this.statistica);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Risultati:"),
      ),
      body: Column(
        
        children: [
          
          Text(
            "Giocatore: " + nickname,
            style: TextStyle(
                color: Colors.red,
                 
               fontFamily: 'Raleway',
                fontSize: 20),
          ),
         
          Text(
            "Risposta Giusta: " + giust.toString(),
            style: TextStyle(
                color: Colors.red,
                
                
                fontFamily: 'Raleway',
                fontSize:  20),
          ),

          
          Text(
            "Risposta Sbagliata: " + sbagliat.toString(),
            style: TextStyle(
                color: Colors.red,
                
               
                fontFamily: 'Raleway',
                fontSize:  20),
          ),
          
        
          Text(
            "Percentuale risposte giuste: " + (statistica.toString()+"%"),
            style: TextStyle(
                color: Colors.red                ,
              
               
                fontFamily: 'Raleway',
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
