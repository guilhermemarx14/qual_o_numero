import 'dart:convert';
import 'package:http/http.dart' as http;

class Resposta {
  int? value;

  Resposta({this.value});

  factory Resposta.fromJson(Map<String, dynamic> json) {
    return Resposta(value: json['value'] as int);
  }

  Future<Resposta> getValue() async {
    var response = await http.get(Uri.parse(
        'https://us-central1-ss-devops.cloudfunctions.net/rand?min=1&max=300'));

    if (response.statusCode == 200) {
      return Resposta.fromJson(jsonDecode(response.body));
    }
    return Resposta(value: response.statusCode);
  }
}
