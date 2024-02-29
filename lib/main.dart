import 'package:checkmate_2/data_ops/task_database.dart';
import 'package:checkmate_2/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskDatabase(),
      child: MaterialApp(
        title: 'CheckMate 2.0',
        theme: ThemeData(
          colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.blue[900]!,
            onPrimary: const Color.fromARGB(255, 16, 16, 16),
            secondary: Colors.blue[800]!,
            onSecondary: const Color.fromARGB(255, 16, 16, 16),
            error: Colors.red[900]!,
            onError: const Color.fromARGB(255, 16, 16, 16),
            background: const Color.fromARGB(255, 15, 15, 15),
            onBackground: Colors.blue[900]!,
            surface: Colors.transparent,
            onSurface: Colors.grey[200]!,
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: const Color.fromARGB(255, 15, 25, 41),
            filled: true,
            labelStyle: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
