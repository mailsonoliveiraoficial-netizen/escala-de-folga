import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/funcionario_controller.dart';
import '../states/funcionario_state.dart';

class FuncionariosPage extends ConsumerStatefulWidget {
  const FuncionariosPage({super.key});

  @override
  ConsumerState<FuncionariosPage> createState() => _FuncionariosPageState();
}

class _FuncionariosPageState extends ConsumerState<FuncionariosPage> {
  @override
  void initState() {
    super.initState();
    // Carrega automaticamente ao abrir a tela
    Future.microtask(() => ref.read(funcionarioControllerProvider.notifier).carregarFuncionarios());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(funcionarioControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Funcionários IN-HAUS'),
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),
      body: _buildBody(state),
    );
  }

  Widget _buildBody(FuncionarioState state) {
    if (state is FuncionarioLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is FuncionarioError) {
      return Center(child: Text(state.message, style: const TextStyle(color: Colors.red)));
    } else if (state is FuncionarioLoaded) {
      if (state.funcionarios.isEmpty) {
        return const Center(child: Text('Nenhum funcionário encontrado.'));
      }
      return ListView.builder(
        itemCount: state.funcionarios.length,
        itemBuilder: (context, index) {
          final f = state.funcionarios[index];
          return ListTile(
            title: Text(f.nome),
            subtitle: Text('${f.funcao.name} | ${f.turno.name}'),
            leading: CircleAvatar(child: Text(f.nome[0])),
          );
        },
      );
    }
    return const SizedBox.shrink();
  }
}