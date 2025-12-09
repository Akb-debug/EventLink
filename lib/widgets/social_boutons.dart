import 'package:event_link/screens/accueil.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Widget? svgPicture;

  const SocialButton(this.text, {super.key, this.icon, this.svgPicture});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 25),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ));
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgPicture != null) svgPicture!,
            if (svgPicture == null && icon != null)
              Icon(
                icon,
                size: 30,
                color: Colors.black,
              ),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
