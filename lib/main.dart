import 'package:enginet/auth.dart';
import 'package:enginet/home_screen.dart';
import 'package:enginet/screens/login_screen.dart';
import 'package:enginet/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Auth(),
      debugShowCheckedModeBanner: false,

      
      routes: {
        '/home': (context) => const HomeScreen(title: 'Enginet'),
        '/signup': (context) => const SignupScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
