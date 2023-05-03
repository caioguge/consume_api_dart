import 'package:consumo_api/models/cursos.dart';
import 'package:consumo_api/models/endereco.dart';

class Alunos {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<Cursos> curso;
  Endereco endereco;

  Alunos({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.curso,
    required this.endereco,
  });
}
