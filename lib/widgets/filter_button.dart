import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final bool isActive;
  const FilterButton(this.text, this.isActive, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive?const  Color.fromRGBO(108 , 59, 166, 1) : const Color.fromRGBO(42, 23, 64, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        )
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}
