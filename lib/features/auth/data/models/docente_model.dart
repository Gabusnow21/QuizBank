import 'package:isar/isar.dart';
import '../../domain/entities/docente.dart';

part 'docente_model.g.dart';

/// Modelo de base de datos de Isar para persistir el perfil del Docente.
/// 
/// Utiliza anotaciones de Isar para definir el esquema de la colección
/// y proporciona mapeadores hacia y desde la entidad pura de dominio [Docente].
@collection
class DocenteModel {
  /// Identificador auto-incremental de Isar para la colección local.
  Id id = Isar.autoIncrement;

  /// Nombre completo del Docente.
  late String nombre;

  /// Correo electrónico (obtenido mediante Google Sign-In).
  @Index(unique: true, replace: true)
  late String correo;

  /// Institución educativa a la que pertenece el docente (ej. Centro Escolar Cantón El Gramal).
  late String institucion;

  /// Fecha de registro local del perfil.
  late DateTime fechaRegistro;

  /// Constructor vacío requerido por Isar.
  DocenteModel();

  /// Crea un [DocenteModel] a partir de una entidad pura de dominio [Docente].
  factory DocenteModel.fromDomain(Docente docente) {
    final model = DocenteModel()
      ..nombre = docente.nombre
      ..correo = docente.correo
      ..institucion = docente.institucion
      ..fechaRegistro = docente.fechaRegistro;
    
    if (docente.id != null) {
      model.id = docente.id!;
    }
    return model;
  }

  /// Convierte este modelo de base de datos en una entidad pura de dominio [Docente].
  Docente toDomain() {
    return Docente(
      id: id == Isar.autoIncrement ? null : id,
      nombre: nombre,
      correo: correo,
      institucion: institucion,
      fechaRegistro: fechaRegistro,
    );
  }
}
