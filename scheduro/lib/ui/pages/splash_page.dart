import 'dart:async';

import 'package:scheduro/shared/themes.dart';
import 'package:scheduro/ui/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Gambar Splash
            Container(
              width: 160,
              height: 160,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img_splash.png'),
                ),
              ),
            ),

            // Jarak antara gambar dan teks (margin 17)
            const SizedBox(height: 17),

            // Teks di bawah gambar
            Text(
              "Scheduro",
              style: blackTextStyle.copyWith(
                fontSize: 28,
                fontWeight: extraBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
