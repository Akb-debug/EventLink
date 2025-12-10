
import 'package:event_link/screens/connexion.dart';

import 'package:flutter/material.dart';

class InscriptionScreen extends StatelessWidget {
  const InscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -------------------------
      // TOOLBAR
      // -------------------------
appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  toolbarHeight: 70,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // ---- Connexion (pas de barre) ----
      GestureDetector(
        onTap: () {},
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Text(
              "Connexion",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 4),
            // Pas de barre ici
            SizedBox(height: 3),
          ],
        ),
      ),

      // ---- S'inscrire (barre en dessous) ----
      GestureDetector(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "S'inscrire",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 4),
            Container(
              width: 120,        
              height: 3.5,      
              color: Colors.blue,
            ),
          ],
        ),
      ),
    ],
  ),
),


      extendBodyBehindAppBar: true,

      body: Stack(
        children: [
          // -------------------------
          // Background image
          // -------------------------
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // -------------------------
          // Gradient overlay
          // -------------------------
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.7),
                  Color.fromRGBO(41, 21, 64, 1),
                ],
              ),
            ),
          ),

          // -------------------------
          // CONTENT
          // -------------------------
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --------------------------------------
                  // Titre
                  // --------------------------------------
                  const Center(
                    child: Text(
                      "Créer un compte",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // --------------------------------------
                  // Bouton Google 
                  // --------------------------------------
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.3),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white70),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google_ogo.jpg',
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Continuer avec Google',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // --------------------------------------
                  // CHAMP EMAIL
                  // --------------------------------------
                  _label("Votre adresse e-mail"),
                  _inputField(),

                  const SizedBox(height: 20),

                  // --------------------------------------
                  // CHAMP USERNAME
                  // --------------------------------------
                  _label("Nom d'utilisateur"),
                  _inputField(),

                  const SizedBox(height: 20),

                  // --------------------------------------
                  // CHAMP MOT DE PASSE
                  // --------------------------------------
                  _label("Mot de passe"),
                  _inputField(obscure: true),

                  const SizedBox(height: 20),

                  // --------------------------------------
                  // CHAMP CONFIRMATION
                  // --------------------------------------
                  _label("Confirmer Mot de Passe"),
                  _inputField(obscure: true),

                  const SizedBox(height: 30),

                  // --------------------------------------
                  // BOUTON "S'inscrire"
                  // --------------------------------------
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Connexion()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 100,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "S'inscrire",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // --------------------------------------
                  // Lien Connexion bas
                  // --------------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Vous avez déjà un compte? ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Se connecter",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.yellow,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ------------------------------------------------------
  // Méthode : Label des champs
  // ------------------------------------------------------
  Widget _label(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.yellow,
          fontSize: 16,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }

  // ------------------------------------------------------
  // Méthode : Champ texte SANS fond blanc
  // ------------------------------------------------------
  Widget _inputField({bool obscure = false}) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.white.withOpacity(0.7),
          width: 1,
        ),
      ),
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Poppins',
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(14),
          hintText: obscure ? "••••••••" : "Entrez votre texte ici",
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}