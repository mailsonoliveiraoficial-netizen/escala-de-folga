import '../../domain/entities/usuario_entity.dart';
import '../../domain/repositories/i_usuario_repository.dart';
import '../datasources/local/usuario_local_datasource.dart';

class UsuarioRepositoryImpl implements IUsuarioRepository {
  final UsuarioLocalDataSource _dataSource;

  UsuarioRepositoryImpl(this._dataSource);

  @override
  Future<UsuarioEntity?> getUsuario() async {
    return await _dataSource.getUsuario();
  }

  @override
  Future<bool> autenticar(String usuario, String senhaHash) async {
    final user = await _dataSource.getUsuario();
    if (user == null) return false;
    return user.usuario == usuario && user.senhaHash == senhaHash;
  }
}