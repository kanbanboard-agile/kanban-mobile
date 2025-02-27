import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In Page')),
      body: Center(child: Text('Halo', style: TextStyle(fontSize: 24))),
    );
  }
}
