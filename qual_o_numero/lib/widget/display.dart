import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({Key? key, required this.num}) : super(key: key);
  final int num;
  //contando do inferior esquerdo no sentido anti-horario e deixando o do meio pro ultimo

  // 0 -> 1, 2, 3, 4, 5, 6
  // 1 -> 1, 2
  // 2 -> 2, 3, 5, 6, 7
  // 3 -> 1, 2, 3, 6, 7
  // 4 -> 1, 2, 4, 7
  // 5 -> 1, 3, 4, 6, 7
  // 6 -> 1, 2, 3, 5, 6, 7
  // 7 -> 1, 2, 3, 4
  // 8 -> 1, 2, 3, 4, 5, 6, 7
  // 9 -> 1, 2, 3, 4, 6, 7
  @override
  Widget build(BuildContext context) {
    Color apagada = Colors.grey;
    Color acesa = Colors.pink;
    var display1 = [0, 1, 3, 4, 5, 6, 7, 8, 9];
    var display2 = [0, 1, 2, 3, 4, 7, 8, 9];
    var display3 = [0, 2, 3, 5, 6, 7, 8, 9];
    var display4 = [0, 4, 5, 6, 7, 8, 9];
    var display5 = [0, 2, 6, 8];
    var display6 = [0, 2, 3, 5, 6, 8, 9];
    var display7 = [2, 3, 4, 5, 6, 8, 9];

    return Row(
      children: [
        Column(
          children: [
            SizedBox(height: 5),
            SegmentoVertical(
                color: display4.contains(num) ? acesa : apagada), // 4
            SegmentoVertical(
                color: display5.contains(num) ? acesa : apagada) // 5
          ],
        ),
        Column(
          children: [
            SegmentoHorizontal(
                color: display3.contains(num) ? acesa : apagada), // 3
            SizedBox(height: 70, width: 50),
            SegmentoHorizontal(
                color: display7.contains(num) ? acesa : apagada), // 7
            SizedBox(height: 70, width: 50),
            SegmentoHorizontal(
                color: display6.contains(num) ? acesa : apagada), // 6
          ],
        ),
        Column(
          children: [
            SizedBox(height: 5),
            SegmentoVertical(
                color: display2.contains(num) ? acesa : apagada), // 2
            SegmentoVertical(
                color: display1.contains(num) ? acesa : apagada) // 1
          ],
        ),
      ],
    );
  }
}

class SegmentoHorizontal extends StatelessWidget {
  const SegmentoHorizontal({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        color: color,
        height: 8,
        width: 80,
      ),
    );
  }
}

class SegmentoVertical extends StatelessWidget {
  const SegmentoVertical({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        color: color,
        height: 80,
        width: 8,
      ),
    );
  }
}
