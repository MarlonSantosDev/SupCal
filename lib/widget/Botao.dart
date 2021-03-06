import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supcal/controller/ControllerCalculadoraPadrao.dart';

class Botao extends StatelessWidget {
  String conteudo;
  var cor;
  var corFundo;
  Botao({required this.conteudo, this.cor, this.corFundo});

  //final controller = ControllerCalculadoraPadrao();

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      color: corFundo == 'S' ? null : cor,
      fontSize: 30,
      fontWeight: FontWeight.w600,
    );
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.width / 5,
      child: Container(
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          color: corFundo == 'S' ? cor : Colors.transparent,
        ),
        child: Center(
          child: Text(
            conteudo,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
