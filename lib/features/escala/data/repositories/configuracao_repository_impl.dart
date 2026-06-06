import '../../domain/entities/configuracao_escala_entity.dart';
import '../../domain/repositories/i_configuracao_escala_repository.dart';
import '../datasources/local/configuracao_local_datasource.dart';
import '../models/configuracao_escala_model.dart';

class ConfiguracaoRepositoryImpl implements IConfiguracaoEscalaRepository {
  final ConfiguracaoLocalDataSource _dataSource;

  ConfiguracaoRepositoryImpl(this._dataSource);

  @override
  Future<ConfiguracaoEscalaEntity?> getConfiguracao() async {
    return await _dataSource.getConfiguracao();
  }

  @override
  Future<void> update(ConfiguracaoEscalaEntity configuracao) async {
    final model = ConfiguracaoEscalaModel(
      id: configuracao.id,
      dataBase: configuracao.dataBase,
      escalaBase: configuracao.escalaBase,
    );
    await _dataSource.update(model);
  }
}