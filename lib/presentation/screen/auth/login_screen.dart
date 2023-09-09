import 'package:finpro_edspert17_david/presentation/router/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7F8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 32, top: 29),
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Image.asset(
              'assets/images/login-image.png',
              width: double.infinity,
            ),
            const SizedBox(height: 56),
            Container(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Selamat Datang',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Center(
                    child: Text(
                      'Selamat Datang di Aplikasi Widya Edu\n Aplikasi Latihan dan Konsultasi Soal',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Color(0xFF6A7483)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Container(
              child: Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(200),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          elevation: 4,
                          alignment: Alignment.center,
                          side: BorderSide(color: Color(0xff01B1AF))),
                      onPressed: () async {
                        AuthController controller = Get.find<AuthController>();
                        User? user = await controller.signInWithGoogle();

                        if (user != null) {
                          Get.snackbar(
                              'Signed In with google!', '${user.email}');

                          bool isRegistered =
                              await controller.isUserRegistered();
                          if (isRegistered) {
                            Get.snackbar('Is Registered!', 'User registered');
                            // Get.offAllNamed(Routes.homeScreen);
                          } else {
                            Get.snackbar(
                                'Not Registered!', 'User is not registered');
                            // Get.toNamed(Routes.registrationFormScreen);
                          }
                        } else {
                          Get.snackbar('Google SignIn Failed!', 'Failed');
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/icon-google.png',
                            width: 20,
                          ),
                          Text('Masuk dengan Google'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(200),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        elevation: 4,
                        alignment: Alignment.center,
                        side: BorderSide(color: Color(0xff01B1AF)),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/icon-apple.png',
                            width: 17,
                          ),
                          Text('Masuk dengan Apple'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
