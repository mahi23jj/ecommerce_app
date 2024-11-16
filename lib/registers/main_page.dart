import 'package:ecommerce/Home/bottom.dart';
import 'package:ecommerce/registers/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
                return  const AnimatedBottomBar();
          }
          else {
                return const Registers();
          }
        },
      ),
    );
  }
}
