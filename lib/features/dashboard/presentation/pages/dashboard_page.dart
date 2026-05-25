import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../../../../core/network/isar_service.dart';
import '../../../auth/data/models/docente_model.dart';
import '../../../questions/data/models/pregunta_model.dart';
import '../../../questions/presentation/pages/editor_matematico_page.dart';

class DashboardPage extends StatefulWidget {
  final IsarService isarService;

  const DashboardPage({super.key, required this.isarService});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  DocenteModel? _docente;
  int _totalPreguntas = 0;
  Map<String, int> _preguntasPorNivel = {};
  Map<String, int> _preguntasPorTema = {};
  List<PreguntaModel> _preguntasRecientes = [];

  @override
  void initState() {
    super.initState();
    _loadDashboardData();
  }

  Future<void> _loadDashboardData() async {
    final isar = await widget.isarService.db;
    
    final docente = await isar.docenteModels.where().findFirst();
    
    final allPreguntas = await isar.preguntaModels.where().findAll();
    
    Map<String, int> porNivel = {};
    Map<String, int> porTema = {};
    
    for (var p in allPreguntas) {
      porNivel[p.nivel] = (porNivel[p.nivel] ?? 0) + 1;
      porTema[p.tema] = (porTema[p.tema] ?? 0) + 1;
    }

    final recientes = await isar.preguntaModels
        .where()
        .sortByFechaCreacionDesc()
        .limit(5)
        .findAll();

    setState(() {
      _docente = docente;
      _totalPreguntas = allPreguntas.length;
      _preguntasPorNivel = porNivel;
      _preguntasPorTema = porTema;
      _preguntasRecientes = recientes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Docente'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadDashboardData,
          )
        ],
      ),
      body: _docente == null
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadDashboardData,
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Text(
                    '¡Hola, ${_docente!.nombre}!',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _docente!.institucion,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 24),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            'Total de Reactivos',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '$_totalPreguntas',
                            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Preguntas por Nivel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: _preguntasPorNivel.entries.map((e) => Chip(
                      label: Text('${e.key}: ${e.value}'),
                      backgroundColor: Colors.blue[100],
                    )).toList(),
                  ),
                  const SizedBox(height: 16),
                  const Text('Preguntas por Tema', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: _preguntasPorTema.entries.map((e) => Chip(
                      label: Text('${e.key}: ${e.value}'),
                      backgroundColor: Colors.green[100],
                    )).toList(),
                  ),
                  const SizedBox(height: 24),
                  const Text('Agregadas Recientemente', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ..._preguntasRecientes.map((p) => ListTile(
                        title: Text(p.enunciado, maxLines: 1, overflow: TextOverflow.ellipsis),
                        subtitle: Text('${p.tema} - ${p.nivel} - ${_formatDate(p.fechaCreacion)}'),
                        leading: const Icon(Icons.functions),
                      )),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorMatematicoPage(isarService: widget.isarService),
            ),
          ).then((_) => _loadDashboardData());
        },
        icon: const Icon(Icons.add),
        label: const Text('Nueva Pregunta'),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
