import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomingWidget extends StatelessWidget {
  const WelcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF3A7FD5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Mau kerjain\nlatihan soal\napa hari ini?',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.8,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/mau-kerjain-apa.png',
            ),
          ),
        ],
      ),
    );
  }
}
