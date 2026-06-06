import '../../models/configuracao_escala_model.dart';
import 'app_database.dart';
import 'database_tables.dart';

class ConfiguracaoLocalDataSource {
  final AppDatabase _dbProvider = AppDatabase.instance;

  Future<ConfiguracaoEscalaModel?> getConfiguracao() async {
    final db = await _dbProvider.database;
    final maps = await db.query(tableConfiguracao, limit: 1);
    if (maps.isEmpty) return null;
    return ConfiguracaoEscalaModel.fromMap(maps.first);
  }

  Future<void> update(ConfiguracaoEscalaModel model) async {
    final db = await _dbProvider.database;
    await db.update(tableConfiguracao, model.toMap(), where: 'id = ?', whereArgs: [model.id]);
  }
}