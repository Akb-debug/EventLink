import 'package:event_link/widgets/event_card.dart';
import 'package:event_link/widgets/filter_button.dart';
import 'package:event_link/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:event_link/screens/accueil.dart';
import 'package:event_link/screens/reservation.dart';
import 'package:event_link/screens/profil.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  String selectedFilter = "Passée";
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BarNav(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() => selectedIndex = index);

          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomePage()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const Reservation()),
            );
          } else if (index == 2) {
           
          } /* else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          } */
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Mes événements",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 45,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _filterButton("Passée"),
                      const SizedBox(width: 10),
                      _filterButton("Prévue"),
                      const SizedBox(width: 10),
                      _filterButton("En cours"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: const [
                    EventCard(
                      imageUrl: "assets/images/business.jpg",
                      title: "Concert Jazz",
                      date: "20 Nov 2025",
                      location: "Lomé, Togo",
                    ),
                    SizedBox(height: 20),
                    EventCard(
                      imageUrl: "assets/images/business.jpg",
                      title: "Festival Art",
                      date: "25 Nov 2025",
                      location: "Lomé, Togo",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filterButton(String label) {
    bool active = selectedFilter == label;

    return GestureDetector(
      onTap: () => setState(() => selectedFilter = label),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: active ? const Color(0xFF7A3DBE) : const Color(0xFFE9D7FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
