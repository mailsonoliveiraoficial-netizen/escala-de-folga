import '../entities/funcionario_entity.dart';

abstract class IFuncionarioRepository {
  Future<List<FuncionarioEntity>> getAll();
  Future<void> save(FuncionarioEntity funcionario);
  Future<void> saveFuncionario(FuncionarioEntity funcionario);
  Future<void> delete(String id);
}