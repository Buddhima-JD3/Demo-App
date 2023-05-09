import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:reg_app_demo/widget/login_field.dart';

import 'widget/gradient_button.dart';
import 'widget/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign In.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const  SocialButton(iconPath: 'assets/svgs/g_logo.svg', label: 'Continue with Google'),
               const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
               const SizedBox(height: 15),
               const LoginField(hintText: 'Email'),
               const SizedBox(height: 15),
               const LoginField(hintText: 'Password'),
               const SizedBox(height: 20),
               GradientButton(displayText: 'Sign In', onPressed: () {
                  Beamer.of(context).beamToNamed('/register');
                },),
               const SizedBox(height: 15),
                GestureDetector(
                onTap: () {
                  Beamer.of(context).beamToNamed('/register');
                },
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
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

