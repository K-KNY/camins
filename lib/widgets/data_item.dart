import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class DataItem extends StatelessWidget {
  const DataItem({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 22),
          const SizedBox(height: 5),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(value, style: AppStyles.valueDataText),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: AppStyles.labelDataText,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
