import '../enums/escala_enum.dart';

class ConfiguracaoEscalaEntity {
  final String id;
  final DateTime dataBase;
  final Escala escalaBase;

  const ConfiguracaoEscalaEntity({
    required this.id,
    required this.dataBase,
    required this.escalaBase,
  });
}