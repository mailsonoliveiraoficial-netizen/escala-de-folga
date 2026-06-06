import '../enums/funcao_enum.dart';
import '../enums/turno_enum.dart';
import '../enums/escala_enum.dart';

class FuncionarioEntity {
  final String id;
  final String nome;
  final Funcao funcao;
  final Turno turno;
  final Escala escala;
  final bool ativo;

  const FuncionarioEntity({
    required this.id,
    required this.nome,
    required this.funcao,
    required this.turno,
    required this.escala,
    this.ativo = true,
  });
}