import '../entities/funcionario_entity.dart';
import '../repositories/i_funcionario_repository.dart';

class ListarFuncionariosUseCase {
  final IFuncionarioRepository _repository;

  ListarFuncionariosUseCase(this._repository);

  Future<List<FuncionarioEntity>> call() async {
    return await _repository.getAll();
  }
}