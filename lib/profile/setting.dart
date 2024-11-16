import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/profile/add_data.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   final user=FirebaseAuth.instance.currentUser!;
    StoreData x = StoreData();
     List<String> docIDs = [];

   

   
 
   

  Stream<QuerySnapshot>? _userStream;
    @override
  void initState() {
     _userStream = FirebaseFirestore.instance.collection('UserProfile').snapshots();
    super.initState();
  }
   Future<String> pickImage() async {
    final FirebaseStorage storage = FirebaseStorage.instance;
    final Reference imageRef = storage.ref().child('2024-03-20 03:13:08.860.png ');
     return  await  imageRef.getDownloadURL() ;
  }



    
                
                          
                            @override
                            Widget build(BuildContext context) {
                             
   
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: (){Navigator.pop(context);},child: Icon(Icons.arrow_back)),
        title: Text('Setting',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:Column(
        children: [
                        Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             const Text('Account'),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                           CircleAvatar(
                                    radius: 100,
                                    child: Image.network(
                                           pickImage() as String,
                                       
                                      fit: BoxFit.cover,
)
                                    
                                  ),
                                          SizedBox(width: 20,),
                                            
                                    Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                       Text('jhon'
                                                       ,
                                                        style: TextStyle(fontWeight: FontWeight.bold),
                                                      ),
                                                      Text('${user.email}'),
                                                      
                                                    ],
                                                  ),
                                          //SizedBox(width: 700,),
                                     // Icon(Icons.arrow_right)          
                                  ],
                                ),
                              ),
                            ),
                           
                          ]
                                 ),
                     
                   
                 ),
               
           Divider(thickness: 2,),
                           const Row( 
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Setting'),
                              ],
                            ),
                            ListTile(
                                  leading:const  Icon(Icons.notifications),
                                  title: Text('Notification'),
                                  trailing: IconButton(onPressed: (){},icon: const Icon( Icons.arrow_right_alt,),)
                                ),
                                 ListTile(
                                  leading: Icon(Icons.search_off_outlined),
                                  title: const Text('Language'),
                                  trailing: IconButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const homepage() ,));
                                  },icon: Icon( Icons.arrow_right_alt,),)
                                ),
                                 ListTile(
                                  leading: const Icon(Icons.privacy_tip),
                                  title: Text('privacy'),
                                  trailing: IconButton(onPressed: (){},icon: Icon( Icons.arrow_right_alt,),)
                                ),
                                 ListTile(
                                  leading: Icon(Icons.help_center),
                                  title: Text('Help Center '),
                                  trailing: IconButton(onPressed: (){},icon: Icon( Icons.arrow_right_alt,),)
                                ),
                                 ListTile(
                                  leading: Icon(Icons.add_ic_call_rounded),
                                  title: Text('About us'),
                                  trailing: IconButton(onPressed: (){},icon: Icon( Icons.arrow_right_alt,),)
                                )
        ],
      )
      );
                            }                   
      
    
  
  }

