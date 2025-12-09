import 'package:flutter/material.dart';
import 'package:event_link/widgets/nav_bar.dart';
import 'package:event_link/screens/accueil.dart';
import 'package:event_link/screens/evenement.dart';

class Reservation extends StatelessWidget {
  const Reservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 24,
              weight: 1000,
            ),
          ),
        ),
        elevation: 4,
        title: const Text(
          'Détails & Réservation',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'popins',
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage('assets/images/reserv1.jpg'),
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Concert Jazz',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'popins',
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 126, 75, 215),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("A proximité",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'popins',
                            )),
                        Text("Heure:19h00",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'popins',
                            )),
                        Text("Type:Musique",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'popins',
                            )),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 20, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              "Lomé, Togo",
                              style: TextStyle(
                                fontFamily: 'popins',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          height: 30,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            "20 Nov 2025",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'popins',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 126, 75, 215),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BarNav(
        currentIndex: 1,
        onTap: (index) {
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
