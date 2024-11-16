import 'package:ecommerce/Home/main.dart';
import 'package:ecommerce/class/module.dart';
import 'package:ecommerce/frontpage.dart';
import 'package:ecommerce/registers/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBlTYfFd5W0fk2ELD0oVIXOPSy9DmvHLuY",
            appId: "1:953539689403:web:4b52be341be90317b4e29e",
            messagingSenderId: "953539689403",
            projectId: "login-4471f",
            storageBucket: "login-4471f.appspot.com",
            ),);
  }

  await Firebase.initializeApp();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Service(),
      child: MaterialApp(
        title: 'Register',
        home: WelcomePage(),
      ),
    );
  }
}
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController controlEmail = TextEditingController();
  final TextEditingController controlPassword = TextEditingController();
  bool password = false;
  Color colorPrimary = Color(0xFF6055D8);
  Service us = Service();





  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: controlEmail.text.trim(), password: controlPassword.text.trim());
    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const HomePage()));
  }


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            const Text(
              'Let\'s Sign You in',
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'GoogleFonts.lato',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const Text(
              'Welcome back,',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 70),
            const Text(
              'Username or Email',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.end,
            ),
            TextFormField(
              controller: controlEmail,
              obscureText: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Username',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 50),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.end,
            ),
            Consumer<Service>(builder: (context, serve, _) {
                return TextFormField(
                  obscureText: serve.obscureText!,
                  controller: controlPassword,
                  decoration:  InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(onPressed: () {
                      serve.toggle();
                    },icon: Icon(Icons.visibility_off)),
                    hintText: ".........",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                );
              }
            ),
            const SizedBox(height: 230),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    signIn();
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  TelegramProfile()));
                  },
                  label: const Text(
                    'SIGN IN',
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
                    MaterialPageRoute(builder: (context) => const Registers()),
                  );
                },
                child: Text(
                  "Don't have an account? Sign Up",
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
    );
  }
}
