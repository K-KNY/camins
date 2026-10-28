import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TrailDetailScreen extends StatelessWidget {
  const TrailDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/header.jpg',
                height: 320,
                width: double.infinity,
                fit: .cover,
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(gradient: AppStyles.imageShade),
                ),
              ),
              Positioned(
                left: 20,
                top: 164,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppStyles.orange,
                    borderRadius: .circular(16),
                  ),
                  child: Text(
                    "PIRINEU - VAL D'ARAN",
                    style: AppStyles.regionTitle,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                top: 198,
                child: Text(
                  "Circuit dels Estanys de Colomers",
                  style: AppStyles.routeTitle,
                ),
              ),
              Positioned(
                left: 20,
                top: 280,
                child: Row(
                  children: [
                    Icon(Icons.star, color: AppStyles.orange, size: 14),
                    AppStyles.tinySeparator,
                    Text("4,8", style: AppStyles.favoriteText),
                    AppStyles.tinySeparator,
                    Text("(126 opinions)", style: AppStyles.opinionsText),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 24, 20, 24),
            padding: const EdgeInsets.symmetric(vertical: 44),
            decoration: BoxDecoration(
              color: AppStyles.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: aquí anirà la barra inferior
    );
  }
}
