import '../entities/configuracao_escala_entity.dart';

abstract interface class IConfiguracaoEscalaRepository {
  Future<ConfiguracaoEscalaEntity?> getConfiguracao();
  Future<void> update(ConfiguracaoEscalaEntity configuracao);
}