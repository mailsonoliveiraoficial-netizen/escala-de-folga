import '../../domain/entities/funcionario_entity.dart';

abstract class FuncionarioState {}

class FuncionarioInitial extends FuncionarioState {}
class FuncionarioLoading extends FuncionarioState {}
class FuncionarioError extends FuncionarioState {
  final String message;
  FuncionarioError(this.message);
}
class FuncionarioLoaded extends FuncionarioState {
  final List<FuncionarioEntity> funcionarios;
  FuncionarioLoaded(this.funcionarios);
}