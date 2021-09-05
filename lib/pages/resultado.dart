import 'package:flutter/material.dart';
import 'package:heads_and_tails/pages/home.dart';

class Resultado extends StatefulWidget {
  String _resultado = " ";
  String _resultadoText = " ";
  Resultado(this._resultado, this._resultadoText);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  void _voltar() {
    Navigator.pop(context );
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Image.asset(
                "images/${widget._resultado}.png",
                height: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Text(
                widget._resultadoText,
                style: TextStyle(
                  fontSize: 65,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFFE3E3E3),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: ElevatedButton(
                    onPressed: () {
                      _voltar();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFE3E3E3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text(
                      "VOLTAR",
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
      )
    );
  }
}
