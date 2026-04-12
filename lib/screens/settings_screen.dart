import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإعدادات'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFF1A237E), Color(0xFF3949AB)]),
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.dark_mode_rounded),
            title: const Text('الوضع الداكن'),
            trailing: Switch(value: false, onChanged: (val) {}),
          ),
          const ListTile(
            leading: const Icon(Icons.notifications_active_rounded),
            title: const Text('التنبيهات الذكية'),
          ),
        ],
      ),
    );
  }
}