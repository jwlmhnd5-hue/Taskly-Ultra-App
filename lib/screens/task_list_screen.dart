import 'package:flutter/material.dart';
// استيراد الشاشات الثلاث الأخرى لضمان عمل الروابط
import 'add_edit_task_screen.dart';
import 'settings_screen.dart';
import 'task_detail_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1A237E), Color(0xFF3949AB)], // تدرج أزرق فخم
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'Taskly Ultra',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: Colors.white),
            onPressed: () {
              // الانتقال لشاشة الإعدادات
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Text('مرحباً بك،', style: TextStyle(fontSize: 18, color: Colors.grey)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'إليك مهامك اليومية',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF1A237E)),
              ),
            ),
            const SizedBox(height: 20),
            // بناء قائمة المهام
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: 3, 
              itemBuilder: (context, index) {
                return _buildModernTaskCard(context, index);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // الانتقال لشاشة إضافة مهمة (في أقل من 5 ثوانٍ كما في المتطلبات)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddEditTaskScreen()),
          );
        },
        backgroundColor: const Color(0xFF1A237E),
        icon: const Icon(Icons.add_task_rounded, color: Colors.white),
        label: const Text('مهمة جديدة', style: TextStyle(color: Colors.white)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  Widget _buildModernTaskCard(BuildContext context, int index) {
    List<String> tasks = ['مراجعة مشروع فلاتر', 'تصميم واجهات UI', 'تجهيز عرض التقديم'];
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          // الانتقال لشاشة تفاصيل المهمة عند الضغط على البطاقة
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TaskDetailScreen()),
          );
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFF1A237E).withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(Icons.calendar_today_rounded, color: Color(0xFF1A237E)),
        ),
        title: Text(
          tasks[index],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        subtitle: const Text('الأولوية: عالية • 12:00 م'),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.grey),
      ),
    );
  }
}