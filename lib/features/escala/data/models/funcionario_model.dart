import '../../domain/entities/funcionario_entity.dart';
import '../../domain/enums/funcao_enum.dart';
import '../../domain/enums/turno_enum.dart';
import '../../domain/enums/escala_enum.dart';

class FuncionarioModel extends FuncionarioEntity {
  const FuncionarioModel({
    required super.id,
    required super.nome,
    required super.funcao,
    required super.turno,
    required super.escala,
    super.ativo = true,
  });

  // Converte de um Map (do SQLite) para o Model
  factory FuncionarioModel.fromMap(Map<String, dynamic> map) {
    return FuncionarioModel(
      id: map['id'],
      nome: map['nome'],
      funcao: Funcao.values[map['funcao']],
      turno: Turno.values[map['turno']],
      escala: Escala.values[map['escala']],
      ativo: map['ativo'] == 1,
    );
  }

  // Converte de um Entity (do Domínio) para o Model (necessário para salvar)
  factory FuncionarioModel.fromEntity(FuncionarioEntity entity) {
    return FuncionarioModel(
      id: entity.id,
      nome: entity.nome,
      funcao: entity.funcao,
      turno: entity.turno,
      escala: entity.escala,
      ativo: entity.ativo,
    );
  }

  // Converte do Model para um Map (para salvar no SQLite)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'funcao': funcao.index,
      'turno': turno.index,
      'escala': escala.index,
      'ativo': ativo ? 1 : 0,
    };
  }
}