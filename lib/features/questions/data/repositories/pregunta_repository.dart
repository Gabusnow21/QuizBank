import 'package:isar/isar.dart';
import '../../domain/entities/pregunta.dart';
import '../models/pregunta_model.dart';

class PreguntaRepository {
  final Isar isar;

  PreguntaRepository(this.isar);

  Future<void> savePregunta(Pregunta pregunta) async {
    final model = PreguntaModel.fromDomain(pregunta);
    await isar.writeTxn(() async {
      await isar.preguntaModels.put(model);
    });
  }

  Future<List<Pregunta>> getAllPreguntas() async {
    final models = await isar.preguntaModels.where().findAll();
    return models.map((model) => model.toDomain()).toList();
  }

  Future<Pregunta?> getPreguntaById(int id) async {
    final model = await isar.preguntaModels.get(id);
    return model?.toDomain();
  }

  Future<void> deletePregunta(int id) async {
    await isar.writeTxn(() async {
      await isar.preguntaModels.delete(id);
    });
  }
}
