import 'package:flutter/material.dart';

class InscriptionScreen extends StatelessWidget {
  const InscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---------------------------------------------------
              // LIENS Connexion / S'inscrire
              // ---------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Connexion",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 215, 212, 212),
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "S'inscrire",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 2,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // ---------------------------------------------------
              // TITRE
              // ---------------------------------------------------
              const Center(
                child: Text(
                  "Créer Compte",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ---------------------------------------------------
              // BOUTON GOOGLE (Container + GestureDetector)
              // ---------------------------------------------------
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/google_logo.webp',
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Continuer avec Google',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ---------------------------------------------------
              // CHAMP EMAIL
              // ---------------------------------------------------
              const Text(
                "Votre adresse e-mail",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // ---------------------------------------------------
              // CHAMP USERNAME
              // ---------------------------------------------------
              const Text(
                "Nom d'utilisateur",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // ---------------------------------------------------
              // CHAMP MOT DE PASSE
              // ---------------------------------------------------
              const Text(
                "Mot de passe",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // ---------------------------------------------------
              // CHAMP CONFIRMATION
              // ---------------------------------------------------
              const Text(
                "Confirmer Mot de Passe",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ---------------------------------------------------
              // BOUTON "S'inscrire"
              // ---------------------------------------------------
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 100,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
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

              const SizedBox(height: 40),

              // ---------------------------------------------------
              // LIEN BAS : déjà un compte ?
              // ---------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Vous avez déjà un compte? ",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Connexion",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 2,
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
    );
  }
}
