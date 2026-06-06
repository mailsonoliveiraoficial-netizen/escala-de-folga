class CadastrarFuncionarioUseCase {
  final IFuncionarioRepository repository;
  CadastrarFuncionarioUseCase(this.repository);

  Future<void> call(FuncionarioEntity funcionario) async {
    return await repository.saveFuncionario(funcionario);
  }
}