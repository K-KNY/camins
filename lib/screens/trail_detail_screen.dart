import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/data_item.dart';
import 'package:camins/widgets/route_features.dart';
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
              // ==================================================
              // 1. CABECERA CON IMAGEN, TÍTULO Y VALORACIÓN
              // ==================================================
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
          // ==================================================
          // 2. TARJETA DE ESTADÍSTICAS
          // ==================================================
          Container(
            margin: const EdgeInsets.fromLTRB(20, 14, 20, 24),
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: AppStyles.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.20),
                  blurRadius: 20,
                  offset: const Offset(0, 16),
                ),
              ],
            ),
            child: Row(
              children: [
                DataItem(
                  icon: Icons.route,
                  value: '9,4 km',
                  label: 'Distància',
                  color: AppStyles.green,
                ),
                _statDivider(),
                DataItem(
                  icon: Icons.trending_up,
                  value: '620 m',
                  label: 'Desnivell',
                  color: AppStyles.green,
                ),
                _statDivider(),
                DataItem(
                  icon: Icons.schedule,
                  value: '3 h 45',
                  label: 'Durada',
                  color: AppStyles.green,
                ),
                _statDivider(),
                DataItem(
                  icon: Icons.terrain,
                  value: 'Moderada',
                  label: 'Dificultat',
                  color: AppStyles.orange,
                ),
              ],
            ),
          ),
          // ==================================================
          // 3. DESCRIPCIÓN DE LA RUTA
          // ==================================================
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sobre la ruta', style: AppStyles.sectionText),

                //const SizedBox(height: 8),
                AppStyles.smallSeparator,

                Text(
                  "Una volta circular pel cor del circ de Colomers, "
                  "amb una desena d'estanys d'origen glacial. "
                  "El camí està ben senyalitzat i la pujada és "
                  "constant però sense trams tècnics. Ideal per a "
                  "finals de primavera i estiu.",
                  style: AppStyles.bodyText,
                ),

                const SizedBox(height: 14),

                // Etiquetas de características
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    RouteFeature(icon: Icons.loop, label: 'Circular'),
                    RouteFeature(icon: Icons.water, label: 'Estanys'),
                    RouteFeature(icon: Icons.pets, label: 'Gossos permesos'),
                    RouteFeature(icon: Icons.water_drop, label: "Font d'aigua"),
                    RouteFeature(icon: Icons.cabin, label: 'Refugi'),
                  ],
                ),
              ],
            ),
          ),
          // Espacio inferior para que el contenido
          // no quede demasiado pegado a la barra fija.
          AppStyles.bigSeparator,
        ],
      ),

      // bottomNavigationBar: aquí anirà la barra inferior

      // ==================================================
      // 4. BARRA INFERIOR FIJA
      // ==================================================
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
          decoration: BoxDecoration(
            color: AppStyles.background,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 12,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            children: [
              // Punto de salida
              const Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Punt de sortida',
                      style: TextStyle(fontSize: 12, color: Color(0xFF71838A)),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Banys de Tredòs',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // Botón de descarga
              SizedBox(
                height: 48,
                width: 48,
                child: OutlinedButton(
                  onPressed: () {
                    // Aquí tendríamos que implementar la descarga de la ruta.
                  },
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    foregroundColor: AppStyles.darkText,
                    side: BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Icon(Icons.download, size: 22),
                ),
              ),

              const SizedBox(width: 8),

              // Botón Començar
              SizedBox(
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Aquí tendríamos que implementar la navegación de la ruta.
                  },
                  icon: const Icon(Icons.navigation, size: 22),
                  label: const Text('Començar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyles.green,
                    foregroundColor: AppStyles.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    textStyle: AppStyles.startButtonText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Separador vertical entre estadísticas
  Widget _statDivider() {
    return Container(width: 1, height: 36, color: AppStyles.greyText);
  }
}
