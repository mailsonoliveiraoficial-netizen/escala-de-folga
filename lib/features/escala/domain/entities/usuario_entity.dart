class UsuarioEntity {
  final String id;
  final String usuario;
  final String senhaHash;

  const UsuarioEntity({
    required this.id,
    required this.usuario,
    required this.senhaHash,
  });
}