import 'package:flutter/material.dart';
import 'screens/task_list_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TasklyApp());
}

class TasklyApp extends StatelessWidget {
  const TasklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taskly Ultra',
      theme: ThemeData(
        useMaterial3: true,
        // استخدام الألوان النظامية فقط بدون خطوط خارجية
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1A237E)),
      ),
      home: const TaskListScreen(),
    );
  }
}
