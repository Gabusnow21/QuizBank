import 'package:isar/isar.dart';
import '../../domain/entities/pregunta.dart';

part 'pregunta_model.g.dart';

@collection
class PreguntaModel {
  Id id = Isar.autoIncrement;

  late String enunciado;
  late List<String> opciones;
  late String respuestaCorrecta;
  late String justificacion;
  late String nivel;
  late String tema;
  late DateTime fechaCreacion;

  PreguntaModel();

  factory PreguntaModel.fromDomain(Pregunta pregunta) {
    final model = PreguntaModel()
      ..enunciado = pregunta.enunciado
      ..opciones = pregunta.opciones
      ..respuestaCorrecta = pregunta.respuestaCorrecta
      ..justificacion = pregunta.justificacion
      ..nivel = pregunta.nivel
      ..tema = pregunta.tema
      ..fechaCreacion = pregunta.fechaCreacion;
    
    if (pregunta.id != null) {
      model.id = pregunta.id!;
    }
    return model;
  }

  Pregunta toDomain() {
    return Pregunta(
      id: id == Isar.autoIncrement ? null : id,
      enunciado: enunciado,
      opciones: opciones,
      respuestaCorrecta: respuestaCorrecta,
      justificacion: justificacion,
      nivel: nivel,
      tema: tema,
      fechaCreacion: fechaCreacion,
    );
  }
}
