
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }
  void openSignupScreen (){
    Navigator.of(context).pushReplacementNamed('/signup');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071739),
      body:SafeArea(
        child:Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/enginet_logo.png',
                height: 150,
                ),
                SizedBox(height: 20,),
                Text(
                  'Sign in',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 40,fontWeight: FontWeight.bold,color: const Color(0xFFA68868),
                  ),
                  ),
                   Text(
                  'Welcome Back!',
                  style: GoogleFonts.robotoCondensed(
                    fontSize: 24,fontWeight: FontWeight.bold,color: const Color(0xFFA68868),
                  ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFE3C39D),
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email'
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFE3C39D),
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password'
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: signIn,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF4B6382),
                          borderRadius: BorderRadius.circular(34)
                        ),
                        child: Center(child: Text('Sign in',
                        style: GoogleFonts.robotoCondensed(
                          color:const Color(0xFFCDD5D8),
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),)),
                        
                        
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?  ",
                      style: GoogleFonts.robotoCondensed(
                        color: const Color(0xFFA68868),
                        fontWeight: FontWeight.bold
                      ),
                      ), 
                      GestureDetector(
                        onTap:openSignupScreen,
                        child: Text("Sign Up Now",
                        style: GoogleFonts.robotoCondensed(
                          color: const Color(0xFFCDD5D8),
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  )
            ],
            ),
          ),
        ),
      ),
    );
  }
}