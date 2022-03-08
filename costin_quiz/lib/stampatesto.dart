// ***COSTIN DIANA 5B IA 28/02/2022***
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart' as htmlParser;  

class StampaText extends StatelessWidget {
  final String myText;

  StampaText(this.myText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        htmlParser.DocumentFragment.html(myText).text.toString(),
        style: TextStyle(color: Colors.white,
            fontSize: 25,),
        textAlign: TextAlign.center,
        
      ),
    );
  }
}
