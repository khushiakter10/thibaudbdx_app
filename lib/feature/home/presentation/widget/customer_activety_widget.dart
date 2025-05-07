import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String date;
  final String time;

  const ActivityItem({
    super.key,
    required this.icon,
    required this.title,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: const BoxDecoration(
              color: Color(0xFF6C63FF),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Icon(icon, size: 20, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14)),
                Text(date,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}