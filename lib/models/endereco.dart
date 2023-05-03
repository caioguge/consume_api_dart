import 'package:consumo_api/models/telefone.dart';
import 'cidade.dart';

class Endereco {
  String rua;
  int numero;
  String CEP;
  Cidade cidade;
  Telefone telefone;

  Endereco({
    required this.rua,
    required this.numero,
    required this.CEP,
    required this.cidade,
    required this.telefone,
  });
}
