import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_haus_escala/features/escala/domain/enums/escala_enum.dart';
import 'package:in_haus_escala/features/escala/domain/enums/funcao_enum.dart';
import 'package:in_haus_escala/features/escala/domain/enums/turno_enum.dart';

class CadastrarFuncionarioPage extends ConsumerStatefulWidget {
  const CadastrarFuncionarioPage({super.key});

  @override
  ConsumerState<CadastrarFuncionarioPage> createState() => _CadastrarFuncionarioPageState();
}

class _CadastrarFuncionarioPageState extends ConsumerState<CadastrarFuncionarioPage> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  
  Funcao _funcao = Funcao.motorista;
  Turno _turno = Turno.a;
  Escala _escala = Escala.um;
  bool _ativo = true;

  @override
  void dispose() {
    _nomeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Funcionário'),
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: 'Nome Completo', 
                  border: OutlineInputBorder()
                ),
                validator: (v) => v == null || v.isEmpty ? 'Nome é obrigatório' : null,
              ),
              const SizedBox(height: 16),
              // ignore: deprecated_member_use
              DropdownButtonFormField<Funcao>(
                
                items: Funcao.values.map((f) => DropdownMenuItem(
                  value: f, 
                  child: Text(f.name.toUpperCase()),
                )).toList(),
                onChanged: (v) => setState(() => _funcao = v!),
                decoration: const InputDecoration(labelText: 'Função', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              // ignore: deprecated_member_use
              DropdownButtonFormField<Turno>(
                
                items: Turno.values.map((t) => DropdownMenuItem(
                  value: t, 
                  child: Text(t.name.toUpperCase()),
                )).toList(),
                onChanged: (v) => setState(() => _turno = v!),
                decoration: const InputDecoration(labelText: 'Turno', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              // ignore: deprecated_member_use
              DropdownButtonFormField<Escala>(
                
                items: Escala.values.map((e) => DropdownMenuItem(
                  value: e, 
                  child: Text(e.name.toUpperCase()),
                )).toList(),
                onChanged: (v) => setState(() => _escala = v!),
                decoration: const InputDecoration(labelText: 'Escala', border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),
              SwitchListTile(
                title: const Text('Funcionário Ativo'),
                value: _ativo,
                onChanged: (v) => setState(() => _ativo = v),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900, 
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16)
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Pronto para conectar com o UseCase de Salvar
                    debugPrint('Salvando: ${_nomeController.text}, $_funcao, $_turno, $_escala, $_ativo');
                  }
                },
                child: const Text('SALVAR FUNCIONÁRIO'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}