import '../entities/configuracao_escala_entity.dart';
import '../repositories/i_configuracao_escala_repository.dart';

class ObterEscalaAtualUseCase {
  final IConfiguracaoEscalaRepository _repository;

  ObterEscalaAtualUseCase(this._repository);

  Future<ConfiguracaoEscalaEntity?> call() async {
    return await _repository.getConfiguracao();
  }
}