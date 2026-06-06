import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_haus_escala/core/injection/injection_container.dart';
import 'package:in_haus_escala/features/escala/domain/entities/funcionario_entity.dart';
import '../../domain/usecases/listar_funcionarios_usecase.dart';
import '../../domain/usecases/cadastrar_funcionario_usecase.dart'; // Import necessário
import '../states/funcionario_state.dart';

// O Provider deve injetar ambos os UseCases no Controller
final funcionarioControllerProvider = StateNotifierProvider<FuncionarioController, FuncionarioState>((ref) {
  return FuncionarioController(sl(), sl()); // Injetando Listar e Cadastrar
});

class FuncionarioController extends StateNotifier<FuncionarioState> {
  final ListarFuncionariosUseCase _listarFuncionariosUseCase;
  final CadastrarFuncionarioUseCase _cadastrarFuncionarioUseCase; // Variável declarada

  // Construtor recebendo os dois UseCases
  FuncionarioController(
    this._listarFuncionariosUseCase,
    this._cadastrarFuncionarioUseCase,
  ) : super(FuncionarioInitial());

  Future<void> carregarFuncionarios() async {
    state = FuncionarioLoading();
    try {
      final lista = await _listarFuncionariosUseCase();
      state = FuncionarioLoaded(lista);
    } catch (e) {
      state = FuncionarioError("Erro ao carregar funcionários");
    }
  }

  Future<void> cadastrarFuncionario(FuncionarioEntity funcionario) async {
    state = FuncionarioLoading();
    try {
      await _cadastrarFuncionarioUseCase(funcionario); // Agora reconhecido
      await carregarFuncionarios(); // Atualiza a lista após salvar
    } catch (e) {
      state = FuncionarioError("Erro ao salvar funcionário");
    }
  }
}