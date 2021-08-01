import 'package:flutter/material.dart';
import 'package:qual_o_numero/widget/display.dart';

class DisplayTriplo extends StatelessWidget {
  DisplayTriplo({
    required this.numero,
  });
  int numero;
  @override
  Widget build(BuildContext context) {
    int numDisplay1, numDisplay2, numDisplay3;
    int centena = (numero / 100).round();
    if (centena == 0)
      numDisplay1 = -1;
    else
      numDisplay1 = (numero / 100).round();
    numero = numero % 100;
    int dezena = (numero / 10).round();
    if (dezena == 0 && centena == 0)
      numDisplay2 = -1;
    else
      numDisplay2 = (numero / 10).round();

    numero = numero % 10;
    numDisplay3 = numero;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        numDisplay1 == -1 ? Container() : Display(num: numDisplay1),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: numDisplay2 == -1
              ? Container()
              : Display(num: numDisplay2), //dezena
        ),

        Display(num: numDisplay3), //unidade
      ],
    );
  }
}
