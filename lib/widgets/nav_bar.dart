import 'package:flutter/material.dart';

class BarNav extends StatelessWidget {
  const BarNav({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed, 
        backgroundColor: const Color.fromARGB(255, 126, 75, 215),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
         label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          label: 'Réservations',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.radio_button_checked),
        label: 'Evénements',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
         label: 'Profil',
        ),
      ],
      );
  }
}