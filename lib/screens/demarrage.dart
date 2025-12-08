import "package:flutter/material.dart";
import "package:event_link/widgets/social_boutons.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class Demarrage extends StatelessWidget {
  const Demarrage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              // Image de concert générique
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(0, 0, 0, 0.5),
                Color.fromRGBO(41, 21, 64, 1),
                Color.fromRGBO(255, 255, 255, 1),
              ],
            ),
          ),
        ),
        const Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Text(
                "EventLink",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Allons-Y",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 30,
              ),
              SocialButton("Continuer avec Email"),
              SizedBox(height: 15),
              SocialButton("Continuer avec Apple", icon: Icons.apple),
              SizedBox(height: 15),
              SocialButton(
                "Continuer avec Google",
                iconWidget: FaIcon(FontAwesomeIcons.google),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
