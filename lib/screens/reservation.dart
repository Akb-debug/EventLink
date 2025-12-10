import 'package:event_link/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Reservation extends StatelessWidget {
  const Reservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Header Section
      appBar: const MyAppBar(title: "Réservation"),
      // Body Section
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //espace
            const SizedBox(
              height: 20,
            ),

            // Image de l'événement
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image(
                image: AssetImage('assets/images/reserv1.jpg'),
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
           
           //espace
            const SizedBox(
              height: 20,
            ),
            
            // Titre de l'événement
            const Text(
              'Concert Jazz',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'popins',
              ),
            ),
            
            //espace
            const SizedBox(
              height: 20,
            ),
            
            // Détails de l'événement
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 126, 75, 215),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                const Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "A proximité",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'popins',
                          ),
                        ),
                        Text(
                          "Heure:19h00",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'popins',
                          ),
                        ),
                        Text(
                          "Type:Musique",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'popins',
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 20, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
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
                      )
                    ],
                  ),
                )
              ]),
            ),
            
            //espace
            const SizedBox(
              height: 30,
            ),
            
            //moyen de paiement
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 126, 75, 215),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Moyent de paiement",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'popins',
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.ccVisa,
                                  size: 40,
                                  color: Color.fromARGB(255, 126, 75, 215),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Visa card",
                                  style: TextStyle(
                                    fontFamily: 'popins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
          //espace
            const SizedBox(
              height: 30,
            ),
            
            // Bouton de réservation
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 126, 75, 215),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "Réservervation",
                  style: TextStyle(
                    fontFamily: 'popins',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}