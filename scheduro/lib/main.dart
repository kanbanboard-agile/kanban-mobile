import 'package:flutter/material.dart';
import 'package:scheduro/ui/pages/authpage/signin_page.dart';
import 'package:scheduro/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Menjadikan SplashPage sebagai route utama
      routes: {
        '/': (context) => const SplashPage(),
        '/signin':
            (context) => const SigninPage(), // Contoh halaman setelah Splash
      },
    );
  }
}
