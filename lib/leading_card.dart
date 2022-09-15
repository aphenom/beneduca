import 'package:flutter/material.dart';

class LeadingCard extends StatelessWidget {
  const LeadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage("assets/imgs/beneduca_logo_carre.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
