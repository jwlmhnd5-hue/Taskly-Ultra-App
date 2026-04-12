import 'package:flutter/material.dart';

class AddEditTaskScreen extends StatelessWidget {
  const AddEditTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إضافة مهمة جديدة')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'عنوان المهمة')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('حفظ المهمة')),
          ],
        ),
      ),
    );
  }
}