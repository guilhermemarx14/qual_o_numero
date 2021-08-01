import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qual_o_numero/constants.dart';
import 'package:qual_o_numero/resposta_json.dart';
import 'package:qual_o_numero/widget/display.dart';
import 'package:qual_o_numero/widget/display_triplo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: rosa,
        title: Text('Qual é o número?'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Teste',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              DisplayTriplo(numero: 120),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ],
      ),
      bottomSheet: TextField(
        showCursor: true,
        maxLength: 3,
        decoration: new InputDecoration(
          labelText: "Digite o  palpite",
          focusColor: Colors.pinkAccent,
          fillColor: Colors.pinkAccent,
          hoverColor: Colors.pinkAccent,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
