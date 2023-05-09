import 'package:flutter/material.dart';
import 'package:reg_app_demo/pallete.dart';
import 'package:beamer/beamer.dart';
import 'package:reg_app_demo/register_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => LoginScreen(),
        '/register': (context, state, data) => RegisterScreen(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      
    );
  }
}
