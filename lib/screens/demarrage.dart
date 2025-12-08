import "package:flutter/material.dart";
import "package:event_link/widgets/social_boutons.dart";
// ignore: depend_on_referenced_packages
import "package:flutter_svg/flutter_svg.dart";

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
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(41, 21, 64, 1),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              const Text(
                "EventLink",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text("Allons-Y",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 30,
              ),
              const SocialButton("Continuer avec Email"),
              const SizedBox(height: 15),
              const SocialButton("Continuer avec Apple", icon: Icons.apple),
              const SizedBox(height: 15),
              SocialButton(
                "Continuer avec Google", 
                svgPicture: SvgPicture.asset("assets/icons/google.svg", width: 25)
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
