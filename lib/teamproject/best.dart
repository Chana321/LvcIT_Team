//Headprofile
import 'package:flutter/material.dart';

class Member1 extends StatelessWidget {
  const Member1({super.key});

  void showInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Chanapol"),
        content: const Text("ชื่อ:ชนะพล ใจหมั้น\nชื่อเล่น:เบส"),
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
                backgroundImage: AssetImage('assets/chana.jpg'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Chana",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("UX/UI"),
          ],
        ),
      ),
    );
  }
}
