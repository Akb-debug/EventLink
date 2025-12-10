import 'package:event_link/widgets/app_bar.dart';
import 'package:event_link/widgets/event_card.dart';
import 'package:event_link/widgets/filter_button.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Mes événements"),

      body: Padding(

        padding: const EdgeInsetsGeometry.symmetric(horizontal: 17, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            const SizedBox(
              height: 45,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    FilterButton("Passée", true),
                    FilterButton("Prévue", false),
                    FilterButton("En cours", false),
                  ],
                ),
              ) 
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
