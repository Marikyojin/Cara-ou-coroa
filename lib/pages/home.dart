import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_and_tails/componets/logo.dart';
import 'package:heads_and_tails/pages/resultado.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _jogar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado("$_resultado","$_resultadoText")));
  }

  var _possibilidade = ["tails_google", "heads_google"];
  var _possibilidadeText = ["Coroa", "Cara"];

  var _resultado = "tails_google";
  var _resultadoText = "Coroa";

  void _calcular() {
    var numeroSorteado = Random().nextInt(_possibilidade.length);
    setState(() {
      _resultado = _possibilidade[numeroSorteado];
      _resultadoText = _possibilidadeText[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB32B18),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Logo(),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                          onPressed: () {
                            _calcular();
                            _jogar();
                            
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE3E3E3),
                            fixedSize: Size.infinite,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          child: Text(
                            "JOGAR",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFB32B18),
                            ),
                          )),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
