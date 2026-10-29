import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class RouteFeature extends StatelessWidget {
  final IconData icon;
  final String label;

  const RouteFeature({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppStyles.lightGreen,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: AppStyles.green),
          const SizedBox(width: 6),
          Text(label, style: TextStyle(fontSize: 13, color: AppStyles.green)),
        ],
      ),
    );
  }
}
