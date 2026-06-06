import 'package:get_it/get_it.dart';
import '../../features/escala/data/datasources/local/app_database.dart';
import '../../features/escala/data/datasources/local/funcionario_local_datasource.dart';
import '../../features/escala/data/datasources/local/configuracao_local_datasource.dart';
import '../../features/escala/data/datasources/local/usuario_local_datasource.dart';
import '../../features/escala/data/repositories/funcionario_repository_impl.dart';
import '../../features/escala/data/repositories/configuracao_repository_impl.dart';
import '../../features/escala/data/repositories/usuario_repository_impl.dart';
import '../../features/escala/domain/repositories/i_funcionario_repository.dart';
import '../../features/escala/domain/repositories/i_configuracao_escala_repository.dart';
import '../../features/escala/domain/repositories/i_usuario_repository.dart';
import '../../features/escala/domain/usecases/listar_funcionarios_usecase.dart';
import '../../features/escala/domain/usecases/obter_escala_atual_usecase.dart';
import '../../features/escala/domain/usecases/obter_folgas_do_dia_usecase.dart';

final sl = GetIt.instance; // sl = Service Locator

Future<void> init() async {
  // 1. Database (Singleton)
  sl.registerLazySingleton(() => AppDatabase.instance);

  // 2. DataSources
  sl.registerLazySingleton(() => FuncionarioLocalDataSource());
  sl.registerLazySingleton(() => ConfiguracaoLocalDataSource());
  sl.registerLazySingleton(() => UsuarioLocalDataSource());

  // 3. Repositories
  sl.registerLazySingleton<IFuncionarioRepository>(() => FuncionarioRepositoryImpl(sl()));
  sl.registerLazySingleton<IConfiguracaoEscalaRepository>(() => ConfiguracaoRepositoryImpl(sl()));
  sl.registerLazySingleton<IUsuarioRepository>(() => UsuarioRepositoryImpl(sl()));

  // 4. UseCases
  sl.registerLazySingleton(() => ListarFuncionariosUseCase(sl()));
  sl.registerLazySingleton(() => ObterEscalaAtualUseCase(sl()));
  sl.registerLazySingleton(() => ObterFolgasDoDiaUseCase(sl(), sl()));
}