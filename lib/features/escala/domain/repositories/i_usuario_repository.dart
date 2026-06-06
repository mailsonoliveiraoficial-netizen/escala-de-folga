import '../entities/usuario_entity.dart';

abstract interface class IUsuarioRepository {
  Future<UsuarioEntity?> getUsuario();
  Future<bool> autenticar(String usuario, String senhaHash);
}