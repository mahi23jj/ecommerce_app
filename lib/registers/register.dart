import 'dart:async';

import 'package:ecommerce/class/module.dart';
import 'package:ecommerce/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';


class Registers extends StatefulWidget {
  const Registers({super.key});

  @override
  State<Registers> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Registers> {
  final _formkey = GlobalKey<FormState>();
    String _email = '';
  String _password = '';
  final Service serve = Service();
  Color colorPrimary = Color(0xFF6055D8);
  TextEditingController my = TextEditingController();
  TextEditingController ly = TextEditingController();
  TextEditingController cm = TextEditingController();
  Service us = Service();
  Future signup() async {
    if (paswordcheak()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: my.text.trim(), password: ly.text.trim());
    }

    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const HomePage()));
  }


  

  bool paswordcheak() {
    if (ly.text.trim() == cm.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    // const bool obs = true;
    //Service work = Provider.of<Service>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
              
              
               Text('Getting Started',style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: 28),),
               Text('create an account to continue!'),
              
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 100, right: 100, top: 100),
                      child: TextFormField(
                        controller: my,
                        decoration: InputDecoration(
                            hintText: 'email',
                            hintStyle: TextStyle(fontSize: 16,fontFamily: 'poppins',),
                            prefixIcon:  Icon(
                              Icons.people,
                            ),
                          
                        )
                              
                    
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: Consumer<Service>(builder: (context, serve, _) {
                        return TextFormField(
                          obscureText: !serve.obscureText,
                          controller: ly,
                          decoration: InputDecoration(
                              hintText: 'password',
                              prefixIcon: const Icon(
                                Icons.key,
                              ),
                              
                                
                                
            
                              suffixIcon: IconButton(
                                onPressed: () {
                                  serve.toggle();
                                },
                                icon: const Icon(Icons.visibility),
                              )),
                              validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: Consumer<Service>(builder: (context, serve, _) {
                        return TextFormField(
                          obscureText: !serve.obscureText,
                          controller: cm,
                          decoration: InputDecoration(
                            hintText: 'confirme password',
                            prefixIcon: const Icon(
                              Icons.key,
                            ),
                           // border: OutlineInputBorder(
                              //borderRadius: BorderRadius.circular(10),
                            
                            
                            suffixIcon: IconButton(
                              onPressed: () {
                                serve.toggle();
                              },
                              icon: const Icon(Icons.visibility),
                            ),
                          ),
                          validator: (value) {
                            if (value == ly.text.trim()) {
                              return null;
                            } 
                            if(value!.isEmpty) {
                    return 'Please enter a password';}
                            else {
                              return 'error';
                            }
                          },
                          onSaved: (value) {
                  _password = value!;
                },
                        );
                      }),
                    ),
                     const SizedBox(height: 150),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton.icon(
                    onPressed: (){
                      signup();
                        
                    },
                    label: const Text(
                      'SIGN up',
                      style: TextStyle(fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      foregroundColor: Colors.white,
                     backgroundColor: colorPrimary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    icon: const Icon(Icons.login),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                    );
                  },
                  child: Text(
                    "Aready have an account? Log in",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
