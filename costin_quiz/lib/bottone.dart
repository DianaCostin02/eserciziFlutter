// ***COSTIN DIANA 5B IA 28/02/2022***
import 'package:flutter/material.dart';
import 'package:html/dom.dart' as htmlParser;  

class Button extends StatelessWidget {
  final Function() azione;
  final String testo;
  final Color colore;

  Button({

      required this.azione, 
      required this.testo, 
      this.colore = Colors.red
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: RaisedButton(
        color: this.colore,
       
        child: Text(htmlParser.DocumentFragment.html(testo).text.toString(),
         style: TextStyle(
             
             fontFamily: 'Raleway',
                fontSize: 14),),
        onPressed: azione,
      ),
      
    );
  }
}
