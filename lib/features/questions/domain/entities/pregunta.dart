class Pregunta {
  final int? id;
  final String enunciado;
  final List<String> opciones;
  final String respuestaCorrecta;
  final String justificacion;
  final String nivel;
  final DateTime fechaCreacion;

  Pregunta({
    this.id,
    required this.enunciado,
    required this.opciones,
    required this.respuestaCorrecta,
    required this.justificacion,
    required this.nivel,
    required this.fechaCreacion,
  });

  Pregunta copyWith({
    int? id,
    String? enunciado,
    List<String>? opciones,
    String? respuestaCorrecta,
    String? justificacion,
    String? nivel,
    DateTime? fechaCreacion,
  }) {
    return Pregunta(
      id: id ?? this.id,
      enunciado: enunciado ?? this.enunciado,
      opciones: opciones ?? this.opciones,
      respuestaCorrecta: respuestaCorrecta ?? this.respuestaCorrecta,
      justificacion: justificacion ?? this.justificacion,
      nivel: nivel ?? this.nivel,
      fechaCreacion: fechaCreacion ?? this.fechaCreacion,
    );
  }
}
