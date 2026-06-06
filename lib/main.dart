import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Certifique-se de importar o caminho correto para a sua página de cadastro
import 'features/escala/presentation/pages/cadastrar_funcionario_page.dart';

void main() {
  // O ProviderScope é obrigatório para que o Riverpod funcione no seu app
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IN-HAUS Escala',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      // Aqui trocamos a página inicial para a sua tela de cadastro
      home: const CadastrarFuncionarioPage(),
    );
  }
}