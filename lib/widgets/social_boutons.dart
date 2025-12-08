import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Widget? iconWidget;

  const SocialButton(this.text, {super.key, this.icon, this.iconWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 25),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric( vertical: 14),
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget ??
              Icon(
                icon,
                size: 25,
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
