import 'package:event_link/widgets/event_card.dart';
import 'package:event_link/widgets/filter_button.dart';
import 'package:event_link/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:event_link/screens/evenement.dart';
import 'package:event_link/screens/reservation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Eventlink",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(42, 23, 64, 1),
                    Color.fromRGBO(108, 59, 166, 1),
                  ],
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("Rechercher des cultures..."),
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  prefixIcon: const Icon(Icons.search, size: 25),
                ),
              ),
            ),

            const SizedBox(height: 15),

            const SizedBox(
              height: 45,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterButton("Music", true),
                    SizedBox(width: 10),
                    FilterButton("Art", false),
                    SizedBox(width: 10),
                    FilterButton("Sport", false),
                    SizedBox(width: 10),
                    FilterButton("Populaire", false),
                    SizedBox(width: 10),
                    FilterButton("Recent", false),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "1000 Events",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  EventCard(
                    imageUrl: "assets/images/business.jpg",
                    title: "Concert Jazz",
                    date: "20 Nov 2025",
                    location: "Lomé, Togo",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BarNav(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() => selectedIndex = index);

          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HomePage()),
            );
          }

          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Reservation()),
            );
          }

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const EventsScreen()),
            );
          }
        },
      ),
    );
  }
}
