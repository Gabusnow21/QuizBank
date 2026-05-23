/// Entidad de Dominio que representa a un Docente.
/// 
/// Esta clase es pura de Dart y no contiene dependencias de infraestructura ni de bases de datos (como Isar).
class Docente {
  final int? id;
  final String nombre;
  final String correo;
  final String institucion;
  final DateTime fechaRegistro;

  const Docente({
    this.id,
    required this.nombre,
    required this.correo,
    required this.institucion,
    required this.fechaRegistro,
  });

  /// Crea una copia de este Docente con los campos actualizados.
  Docente copyWith({
    int? id,
    String? nombre,
    String? correo,
    String? institucion,
    DateTime? fechaRegistro,
  }) {
    return Docente(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      correo: correo ?? this.correo,
      institucion: institucion ?? this.institucion,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Docente &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          nombre == other.nombre &&
          correo == other.correo &&
          institucion == other.institucion &&
          fechaRegistro == other.fechaRegistro;

  @override
  int get hashCode =>
      id.hashCode ^
      nombre.hashCode ^
      correo.hashCode ^
      institucion.hashCode ^
      fechaRegistro.hashCode;

  @override
  String toString() {
    return 'Docente(id: $id, nombre: $nombre, correo: $correo, institucion: $institucion, fechaRegistro: $fechaRegistro)';
  }
}
