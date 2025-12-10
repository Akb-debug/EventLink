import 'package:event_link/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color purple = Color(0xFF6C3BA6); 
    const Color yellow = Colors.yellow;

    return Scaffold(
      appBar: const MyAppBar(title: "Profil & réseau"),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ----------------------------------------------------
              // SECTION PROFIL (carte violette + avatar rond)
              // ----------------------------------------------------
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  // Carte violette
                  Container(
                    margin: const EdgeInsets.only(top: 48),
                    padding: const EdgeInsets.fromLTRB(72, 56, 72, 24),
                    decoration: BoxDecoration(
                      color: purple,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "KOMADAN Josué",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "josuekomadan@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Bouton Modifier
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: yellow,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            "Modifier",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Avatar rond qui dépasse en haut
                  Container(
                    width: 96,
                    height: 96,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profil.jpg"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // ----------------------------------------------------
              // LISTE DES OPTIONS
              // ----------------------------------------------------
              const OptionItem(
                icon: Icons.person_outline,
                text: "Profil utilisateur",
              ),
              const OptionItem(
                icon: Icons.event_outlined,
                text: "Historique des événements",
              ),
              const OptionItem(
                icon: Icons.mail_outline,
                text: "Messagerie interne",
              ),
              const OptionItem(
                icon: Icons.notifications_none,
                text: "Notifications",
              ),

              const SizedBox(height: 40),

              // ----------------------------------------------------
              // BOUTON DECONNEXION
              // ----------------------------------------------------
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 36,
                  ),
                  decoration: BoxDecoration(
                    color: purple,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Text(
                    "Déconnexion",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

/// ----------------------------------------------------
/// WIDGET POUR CHAQUE LIGNE DU MENU (statique)
/// ----------------------------------------------------
class OptionItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const OptionItem({
    super.key,
    required this.icon,
    required this.text,
  });

  static const Color iconColor = Colors.black; 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.8),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icône simple, sans cercle
          Icon(
            icon,
            size: 24,
            color: iconColor,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: 20,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}