import '../../domain/entities/funcionario_entity.dart';
import '../../domain/repositories/i_funcionario_repository.dart';
import '../datasources/local/funcionario_local_datasource.dart';
import '../models/funcionario_model.dart';

class FuncionarioRepositoryImpl implements IFuncionarioRepository {
  final FuncionarioLocalDataSource _dataSource;

  // O construtor recebe apenas o dataSource necessário
  FuncionarioRepositoryImpl(this._dataSource);

  @override
  Future<List<FuncionarioEntity>> getAll() async {
    return await _dataSource.getAll();
  }

  // Método unificado para salvar seguindo sua interface
  @override
  Future<void> save(FuncionarioEntity funcionario) async {
    final model = FuncionarioModel.fromEntity(funcionario);
    await _dataSource.save(model);
  }

  @override
  Future<void> delete(String id) async {
    await _dataSource.delete(id);
  }

  // Se você precisa manter este nome específico para o UseCase, 
  // ele deve chamar o método que persiste no banco.
  @override
  Future<void> saveFuncionario(FuncionarioEntity funcionario) async {
    final model = FuncionarioModel.fromEntity(funcionario);
    await _dataSource.insertFuncionario(model);
  }
}