import 'dart:convert';

class Telefone {
  int ddd;
  String numero;

  Telefone({
    required this.ddd,
    required this.numero,
  });

  // Método que pega o nosso objeto Telefone e transforma em um Objeto Map<String, dynamic>
  // toMap()
  // Primeiro passo - Serialização
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'numero': numero,
    };
  }

  // Método que pega um Map<String, dynamic> e transforma em um json pelo pacote dart:coverter (jsonEncode)
  // toJson()
  // Segundo passo - Serialização
  String toJson() => jsonEncode(toMap());

  // Recebimento de dados JSON
  // Primeiro passo - Desserialização

  factory Telefone.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Telefone.fromMap(jsonMap);
  }

  // Convertendo o mapa JSON em um Objeto
  // Segundo passo - Desserialização

  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'],
      numero: map['numero'],
    );
  }
}
