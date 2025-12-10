import 'package:event_link/widgets/event_card.dart';
import 'package:event_link/widgets/filter_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

        padding: const EdgeInsetsGeometry.symmetric(horizontal: 17, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(42, 23, 64, 1),
                    Color.fromRGBO(108 , 59, 166, 1),
                  ],
                )
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Rechercher des cultures...",
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  prefixIcon: const Icon(Icons.search, size: 25,),
                ),
              ) ,
            ),

            const SizedBox(
              height: 45,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    FilterButton("Music", true),
                    FilterButton("Art", false),
                    FilterButton("Sport", false),
                    FilterButton("Populaire", false),
                    FilterButton("Recent", false),
                  ],
                ),
              ) 
            ),

            const Text(
              textAlign: TextAlign.left,
              "1000 Events",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500
              ),
            ),

            Expanded(
              child: ListView(
                children:const [
                  EventCard(
                    title: "Concert Jazz", 
                    date: "20 Nov 2025", 
                    location: "Lomé,Togo", 
                    imageUrl: 'assets/images/business.jpg',
                  ),

                  EventCard(
                    title: "Soirée musicale", 
                    date: "10 Dec 2025", 
                    location: "Lomé,Togo", 
                    imageUrl: 'assets/images/image-1.jpg',
                  ),

                  EventCard(
                    title: "Karaoké", 
                    date: "19 Jan 2026", 
                    location: "Lomé,Togo", 
                    imageUrl: 'assets/images/image-1.jpg',
                  )
                ],
              ),
            )
          ],
        ), 
      ),
    );
  }
}
