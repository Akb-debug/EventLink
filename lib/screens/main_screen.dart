import 'package:event_link/screens/accueil.dart';
import 'package:event_link/screens/evenement.dart';
import 'package:event_link/screens/profil.dart';
import 'package:event_link/screens/reservation.dart';
import 'package:event_link/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    Reservation(),
    EventsScreen(),
    ProfilScreen(),
  ];

  void _onNavTapped(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BarNav(
        currentIndex: _currentIndex,
        onTap: _onNavTapped,
      ),
    );
  }
}
