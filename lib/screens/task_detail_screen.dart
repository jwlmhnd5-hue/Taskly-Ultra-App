import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل المهمة'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFF1A237E), Color(0xFF3949AB)]),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('عنوان المهمة:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const Text('العمل على تحسين التجربة', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text('الوصف:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const Text('وفقا للمتطالبات المشروع النهائي', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}