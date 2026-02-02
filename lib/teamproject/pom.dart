import 'package:flutter/material.dart';

class Member2 extends StatelessWidget {
  const Member2({super.key});

  void showInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Thana"),
        content: const Text("ชื่อ:ธนภัทร เปี้ยปลูฏ\nชื่อเล่น:ป้อม"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("ปิด"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => showInfo(context),
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/thana.jpg'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Thana",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("UI Developer"),
          ],
        ),
      ),
    );
  }
}
