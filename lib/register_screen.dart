import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:reg_app_demo/widget/login_field.dart';

import 'widget/gradient_button.dart';
import 'widget/social_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign Up.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
               const LoginField(hintText: 'First Name'),
               const SizedBox(height: 15),
               const LoginField(hintText: 'Last Name'),
               const SizedBox(height: 15),
               const LoginField(hintText: 'Email'),
               const SizedBox(height: 15),
               const LoginField(hintText: 'Password'),
               const SizedBox(height: 15),
               const LoginField(hintText: 'Confirm Password'),
               const SizedBox(height: 20),
               GradientButton(displayText: 'Sign Up',onPressed: () {
                  Beamer.of(context).beamToNamed('/');
                },),
               const SizedBox(height: 15),
               const Text(
                "Already have an account? Sign In",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
               const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

