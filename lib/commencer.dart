import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Commencer(),
    );
  }
}

class Commencer extends StatelessWidget {
  const Commencer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo en haut
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/acc3.png', // Chemin vers l'image dans les assets
                    height: 40,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error, color: Colors.red);
                    },
                  ),
                ],
              ),
            ),

            // Image principale
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/acc3.png', // Chemin de votre image locale
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          'Image introuvable',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Texte principal
            const Text(
              'ONLINE TRAINING',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Date et heure
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    '02 January, 2024',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    '09:00 - 11:00',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
            const Spacer(),

            // Bouton "Commencer"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Action du bouton
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Commencer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
