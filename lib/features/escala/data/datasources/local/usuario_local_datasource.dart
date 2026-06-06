import '../../models/usuario_model.dart';
import 'app_database.dart';
import 'database_tables.dart';

class UsuarioLocalDataSource {
  final AppDatabase _dbProvider = AppDatabase.instance;

  Future<UsuarioModel?> getUsuario() async {
    final db = await _dbProvider.database;
    final maps = await db.query(tableUsuario, limit: 1);
    return maps.isNotEmpty ? UsuarioModel.fromMap(maps.first) : null;
  }
}