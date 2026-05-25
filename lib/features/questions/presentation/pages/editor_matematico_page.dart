import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import '../../../../core/network/isar_service.dart';
import '../../domain/entities/pregunta.dart';
import '../../data/repositories/pregunta_repository.dart';

class EditorMatematicoPage extends StatefulWidget {
  final IsarService isarService;

  const EditorMatematicoPage({super.key, required this.isarService});

  @override
  State<EditorMatematicoPage> createState() => _EditorMatematicoPageState();
}

class _EditorMatematicoPageState extends State<EditorMatematicoPage> {
  final _formKey = GlobalKey<FormState>();
  final _enunciadoController = TextEditingController();
  final _opcionesController = TextEditingController();
  final _respuestaCorrectaController = TextEditingController();
  final _justificacionController = TextEditingController();
  final _nivelController = TextEditingController();
  final _temaController = TextEditingController();

  late PreguntaRepository _repository;

  @override
  void initState() {
    super.initState();
    _initRepo();
  }

  Future<void> _initRepo() async {
    final isar = await widget.isarService.db;
    _repository = PreguntaRepository(isar);
  }

  void _savePregunta() async {
    if (_formKey.currentState!.validate()) {
      final opcionesList = _opcionesController.text.split(',').map((e) => e.trim()).toList();
      
      final nuevaPregunta = Pregunta(
        enunciado: _enunciadoController.text,
        opciones: opcionesList,
        respuestaCorrecta: _respuestaCorrectaController.text,
        justificacion: _justificacionController.text,
        nivel: _nivelController.text,
        tema: _temaController.text,
        fechaCreacion: DateTime.now(),
      );

      await _repository.savePregunta(nuevaPregunta);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Pregunta guardada exitosamente')),
        );
        Navigator.pop(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editor de Preguntas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _savePregunta,
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 800;
          
          Widget formView = _buildForm();
          Widget previewView = _buildPreview();

          if (isWide) {
            return Row(
              children: [
                Expanded(flex: 1, child: formView),
                const VerticalDivider(width: 1),
                Expanded(flex: 1, child: previewView),
              ],
            );
          } else {
            return DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.blue,
                    tabs: [
                      Tab(text: 'Editor'),
                      Tab(text: 'Vista Previa'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        formView,
                        previewView,
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextFormField(
            controller: _enunciadoController,
            decoration: const InputDecoration(
              labelText: 'Enunciado (Usa \$...\$ o \$\$...\$\$ para LaTeX)',
              border: OutlineInputBorder(),
            ),
            maxLines: 5,
            onChanged: (_) => setState(() {}),
            validator: (value) => value!.isEmpty ? 'Requerido' : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _opcionesController,
            decoration: const InputDecoration(
              labelText: 'Opciones (separadas por coma)',
              border: OutlineInputBorder(),
            ),
            onChanged: (_) => setState(() {}),
            validator: (value) => value!.isEmpty ? 'Requerido' : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _respuestaCorrectaController,
            decoration: const InputDecoration(
              labelText: 'Respuesta Correcta',
              border: OutlineInputBorder(),
            ),
            onChanged: (_) => setState(() {}),
            validator: (value) => value!.isEmpty ? 'Requerido' : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _justificacionController,
            decoration: const InputDecoration(
              labelText: 'Justificación',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
            onChanged: (_) => setState(() {}),
            validator: (value) => value!.isEmpty ? 'Requerido' : null,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _nivelController,
                  decoration: const InputDecoration(
                    labelText: 'Nivel (ej. 8vo Grado)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty ? 'Requerido' : null,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  controller: _temaController,
                  decoration: const InputDecoration(
                    labelText: 'Tema (ej. Álgebra)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty ? 'Requerido' : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: _savePregunta,
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('Guardar Pregunta', style: TextStyle(fontSize: 16)),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPreview() {
    return Container(
      color: Colors.grey[50],
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
          const Text('Vista Previa del Reactivo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
          const Divider(),
          const SizedBox(height: 16),
          _renderMathText(_enunciadoController.text.isEmpty ? 'Escribe tu pregunta aquí...' : _enunciadoController.text),
          const SizedBox(height: 24),
          if (_opcionesController.text.isNotEmpty)
            ..._opcionesController.text.split(',').map((e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      const Icon(Icons.radio_button_unchecked, size: 16),
                      const SizedBox(width: 8),
                      Expanded(child: _renderMathText(e.trim())),
                    ],
                  ),
                )),
          const SizedBox(height: 24),
          const Text('Respuesta Correcta:', style: TextStyle(fontWeight: FontWeight.bold)),
          if (_respuestaCorrectaController.text.isNotEmpty)
            _renderMathText(_respuestaCorrectaController.text),
          const SizedBox(height: 16),
          const Text('Justificación:', style: TextStyle(fontWeight: FontWeight.bold)),
          if (_justificacionController.text.isNotEmpty)
            _renderMathText(_justificacionController.text),
        ],
      ),
    );
  }

  Widget _renderMathText(String text) {
    // Un renderizador simple que divide por símbolos \$
    // Para simplificar, asumimos que el texto alterna entre texto normal y math.
    // Esto es un ejemplo básico.
    List<Widget> children = [];
    final pattern = RegExp(r'\$(.*?)\$');
    int lastMatchEnd = 0;
    
    for (var match in pattern.allMatches(text)) {
      if (match.start > lastMatchEnd) {
        children.add(Text(text.substring(lastMatchEnd, match.start)));
      }
      children.add(
        Math.tex(
          match.group(1) ?? '',
          textStyle: const TextStyle(fontSize: 16),
          onErrorFallback: (err) => Text('Error en la fórmula', style: TextStyle(color: Colors.red)),
        )
      );
      lastMatchEnd = match.end;
    }
    
    if (lastMatchEnd < text.length) {
      children.add(Text(text.substring(lastMatchEnd)));
    }
    
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: children.isEmpty ? [Text(text)] : children,
    );
  }

  @override
  void dispose() {
    _enunciadoController.dispose();
    _opcionesController.dispose();
    _respuestaCorrectaController.dispose();
    _justificacionController.dispose();
    _nivelController.dispose();
    _temaController.dispose();
    super.dispose();
  }
}
