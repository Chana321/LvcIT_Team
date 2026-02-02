//oatprofile
import 'package:flutter/material.dart';

class Member3 extends StatelessWidget {
  const Member3({super.key});

  void showInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Oat"),
        content: const Text("ชื่อ:ณัฐสิทธิ์ ปัญญาติ๊บ\nชื่อเล่น:โอ๊ต"),
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
                backgroundImage: AssetImage('assets/Nadta.jpg'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "oat",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("UI Developer"),
          ],
        ),
      ),
    );
  }
}
