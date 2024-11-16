//import 'dart:ffi';

//import 'dart:js';

import 'package:ecommerce/profile/setting.dart';
import 'package:ecommerce/profile/username.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/widgets.dart';



class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _profileState();
}

class _profileState extends State<Profile> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 218, 106, 106),
                ),
                SizedBox(
                  width: 20,
                ),
                const Text(
                  'Mark adam',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //Text('${user.email}'),
                SizedBox(
                  width: 20,
                ),
              ]),
            ),
            ListTile(
                leading: const Icon(Icons.people_alt),
                title: Text('profile'),
                trailing: IconButton(
                  onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Profilepage(),
                        ));
                  },
                  icon: const Icon(
                    Icons.arrow_right_alt,
                  ),
                )),
            ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Setting'),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const homepage(),
                        ));
                  },
                  icon: Icon(
                    Icons.arrow_right_alt,
                  ),
                )),
            ListTile(
                leading: const Icon(Icons.contact_mail),
                title: Text('contact'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right_alt,
                  ),
                )),
            ListTile(
                leading: Icon(Icons.share),
                title: Text('Share App'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right_alt,
                  ),
                )),
            ListTile(
                leading: Icon(Icons.question_mark_rounded),
                title: Text('Help'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right_alt,
                  ),
                )),
           Center(
                child: GestureDetector(
                  onTap: () { FirebaseAuth.instance.signOut();},
                  child: const Text('Sign out',
                      style:
                          TextStyle(color: Color.fromARGB(229, 227, 100, 54)),
                          ),
                ),
                        ),
          ],
        ),
      ),
    );
  }
}
