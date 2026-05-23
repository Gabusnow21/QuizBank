import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:isar/isar.dart';
import '../../domain/entities/docente.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/docente_model.dart';

/// Implementación del [AuthRepository] utilizando Isar para persistencia y Google Sign-In.
/// 
/// Garantiza el principio Offline-First guardando la sesión del docente en una base de datos local
/// para que el acceso sea instantáneo en posteriores inicios de la aplicación sin depender de internet.
class AuthRepositoryImpl implements AuthRepository {
  final Isar isar;
  final GoogleSignIn _googleSignIn;
  
  /// Controlador para gestionar reactivamente el estado de la sesión del Docente.
  final StreamController<Docente?> _authStreamController = StreamController<Docente?>.broadcast();

  AuthRepositoryImpl({
    required this.isar,
    GoogleSignIn? googleSignIn,
  })  : _googleSignIn = googleSignIn ?? GoogleSignIn(scopes: ['email', 'profile']) {
    // Inicializar el stream con el docente cacheado al arrancar.
    _initSession();
  }

  /// Recupera y notifica el docente guardado al arrancar la app.
  Future<void> _initSession() async {
    final cached = await getCachedDocente();
    _authStreamController.add(cached);
  }

  @override
  Stream<Docente?> get onAuthStateChanged => _authStreamController.stream;

  @override
  Future<Docente?> getCachedDocente() async {
    try {
      // Retorna el primer docente encontrado en la base de datos local.
      final model = await isar.docenteModels.where().findFirst();
      return model?.toDomain();
    } catch (e) {
      // En caso de cualquier error (por ejemplo, base de datos no inicializada aún),
      // retornamos null sin romper el flujo.
      return null;
    }
  }

  @override
  Future<Docente?> signInWithGoogle({String? institucionPredeterminada}) async {
    try {
      // Inicia el flujo visual de autenticación de Google.
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // El usuario canceló la autenticación.
        return null;
      }

      final String email = googleUser.email;
      final String displayName = googleUser.displayName ?? "Docente Sin Nombre";

      // Buscamos si ya existe el docente localmente por su correo electrónico.
      DocenteModel? existingModel = await isar.docenteModels
          .filter()
          .correoEqualTo(email)
          .findFirst();

      if (existingModel == null) {
        // Es la primera vez que inicia sesión en este dispositivo.
        // Creamos un nuevo registro con la institución por defecto especificada o recomendada.
        final newDocente = Docente(
          nombre: displayName,
          correo: email,
          institucion: institucionPredeterminada ?? "Centro Escolar Cantón El Gramal",
          fechaRegistro: DateTime.now(),
        );

        final modelToSave = DocenteModel.fromDomain(newDocente);

        // Almacenamos en Isar de forma síncrona/asíncrona dentro de una transacción de escritura.
        // Usamos una variable final local para asegurar una promoción de tipo perfecta dentro de la clausura.
        await isar.writeTxn(() async {
          modelToSave.id = await isar.docenteModels.put(modelToSave);
        });
        
        existingModel = modelToSave;
      } else {
        // Si el docente ya existía pero, por ejemplo, cambió de nombre en su cuenta de Google,
        // actualizamos su nombre para mantener consistencia.
        if (existingModel.nombre != displayName) {
          existingModel.nombre = displayName;
          final modelToSave = existingModel;
          await isar.writeTxn(() async {
            await isar.docenteModels.put(modelToSave);
          });
        }
      }

      final docente = existingModel.toDomain();
      // Notificar a los suscriptores del cambio de estado.
      _authStreamController.add(docente);
      return docente;
    } catch (e) {
      // Manejar el error y relanzar o retornar null de acuerdo con la estrategia de logs.
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      // Cierra sesión en el SDK de Google.
      await _googleSignIn.signOut();
      
      // Limpia todas las credenciales de docentes en la base de datos local
      // para asegurar que no se queden datos sensibles sin autenticar.
      await isar.writeTxn(() async {
        await isar.docenteModels.clear();
      });

      // Notifica que la sesión está cerrada (es nula).
      _authStreamController.add(null);
    } catch (e) {
      rethrow;
    }
  }

  /// Limpia los recursos al desechar el repositorio.
  void dispose() {
    _authStreamController.close();
  }
}
