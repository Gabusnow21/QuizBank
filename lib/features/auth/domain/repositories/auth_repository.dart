import '../entities/docente.dart';

/// Interfaz del Repositorio de Autenticación en la capa de dominio.
/// 
/// Define las operaciones esenciales para el inicio de sesión y la persistencia
/// de la sesión de manera Offline-First.
abstract class AuthRepository {
  /// Inicia el flujo seguro de autenticación utilizando Google Sign-In.
  /// 
  /// Si es exitoso, persiste el perfil del docente localmente en Isar y retorna la entidad [Docente].
  /// Si es cancelado o falla, retorna null.
  Future<Docente?> signInWithGoogle({String? institucionPredeterminada});

  /// Cierra la sesión activa del docente tanto en Google Sign-In como a nivel local.
  Future<void> signOut();

  /// Recupera el perfil del docente almacenado localmente si ya existe una sesión activa.
  /// 
  /// Permite el arranque Offline-First sin requerir red.
  Future<Docente?> getCachedDocente();

  /// Stream para escuchar los cambios en el estado de autenticación (Docente activo o null).
  Stream<Docente?> get onAuthStateChanged;
}
