import '../../domain/entities/configuracao_escala_entity.dart';
import '../../domain/enums/escala_enum.dart';

class ConfiguracaoEscalaModel extends ConfiguracaoEscalaEntity {
  const ConfiguracaoEscalaModel({
    required super.id,
    required super.dataBase,
    required super.escalaBase,
  });

  factory ConfiguracaoEscalaModel.fromMap(Map<String, dynamic> map) {
    return ConfiguracaoEscalaModel(
      id: map['id'],
      dataBase: DateTime.parse(map['dataBase']),
      escalaBase: Escala.values[map['escalaBase']],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'dataBase': dataBase.toIso8601String(),
      'escalaBase': escalaBase.index,
    };
  }
}