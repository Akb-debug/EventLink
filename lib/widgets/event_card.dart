import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String date;
  final String location;

  const EventCard(
      {super.key,
      this.imageUrl,
      required this.title,
      required this.date,
      required this.location});

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Container(
          width: 500,
          height: 200,
          decoration: BoxDecoration(
           image: DecorationImage(
            image: AssetImage(imageUrl!),
           ),
          ),
        ),

        Positioned(
          left: 0,
          right: 0,
          top: 100,
          height: 20,
          child: Center(
            child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.red,
                
              ),
              // padding: const EdgeInsets.all(10),
              child: const Text(
                "voir plus",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            )
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(108 , 59, 166, 1),
            ),
            child: Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                spacing: 20,
                children: [
                  Column(
                    children: [
                      Text(title),
                      Row(
                        children: [
                          const Icon(Icons.location_city),
                          Text(location)
                        ],
                      ),
                    ],
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                    ),
                    child: Text(date),
                  ),
                ],
              ),
            )
          ),
        )
      ],
    );
  }
}
