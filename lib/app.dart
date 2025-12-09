import 'package:event_link/screens/profil.dart';
import 'package:flutter/material.dart';

import 'package:event_link/screens/demarrage.dart';
<<<<<<< HEAD

=======
>>>>>>> jules

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Link',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD

      home: const ProfilScreen(),

=======
      home: const ProfilScreen(),
>>>>>>> jules
    );
  }
}
