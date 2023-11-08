import 'package:flutter/material.dart';
import 'package:main_student_app/screens/info_screen.dart';
import 'package:main_student_app/screens/login_screen.dart';
import 'package:main_student_app/screens/home_screen.dart';
import 'package:main_student_app/screens/signup_screen.dart';
import 'package:provider/provider.dart';

import 'controller/navigation_controller.dart';

Future<void> main() async {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomController()),

      ],
      child: const MyApp(),
    ),
  );
  await Future.delayed(const Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get student => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {

        '/home' : (context) => const HomeScreen(),
        '/login' : (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/info': (context) => const InfoScreen(),
      },
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {

    final navController = Provider.of<BottomController>(context);
    return Scaffold(
      body: navController.currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navController.currentIndex,
        onTap: (index) {
          navController.updateIndex(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),

        ],
      ),
    );
  }
}
