import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/network/isar_service.dart';
import 'features/dashboard/presentation/pages/dashboard_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  final isarService = IsarService();
  // Inicializamos la BD antes de lanzar la app
  await isarService.db;

  runApp(MyApp(isarService: isarService));
}

class MyApp extends StatelessWidget {
  final IsarService isarService;

  const MyApp({super.key, required this.isarService});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizBank Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88E5), // Azul moderno
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: DashboardPage(isarService: isarService),
    );
  }
}
