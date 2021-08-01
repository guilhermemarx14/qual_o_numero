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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(''),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Teste',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                DisplayTriplo(numero: 3),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 130,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: rosa,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: rosa),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: rosa),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2, color: rosa),
                      ),
                    ),
                    maxLength: 3,
                  ),
                ),
                RaisedButton(
                  hoverColor: rosa,
                  onPressed: () {},
                  child: Text('ENVIAR'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
