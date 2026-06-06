import '../../models/funcionario_model.dart';
import 'app_database.dart';
import 'database_tables.dart';

class FuncionarioLocalDataSource {
  final AppDatabase _dbProvider = AppDatabase.instance;

  Future<List<FuncionarioModel>> getAll() async {
    final db = await _dbProvider.database;
    final maps = await db.query(tableFuncionario);
    return maps.map((e) => FuncionarioModel.fromMap(e)).toList();
  }

  Future<void> save(FuncionarioModel model) async {
    final db = await _dbProvider.database;
    await db.insert(tableFuncionario, model.toMap());
  }

  Future<void> delete(String id) async {
    final db = await _dbProvider.database;
    await db.delete(tableFuncionario, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> insertFuncionario(FuncionarioModel funcionario) async {
    final db = await AppDatabase.instance.database;
    // Corrigido para referenciar 'funcionario' que é o nome do parâmetro recebido
    print("DEBUG: O dado chegou no DataSource: ${funcionario.toMap()}");
    await db.insert('funcionarios', funcionario.toMap());
  }
}