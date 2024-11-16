
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/Home/product.dart';
import 'package:ecommerce/class/new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail.dart';
import 'package:dots_indicator/dots_indicator.dart';
//import 'search.dart';



class TelegramProfile extends StatefulWidget {
  @override
  _TelegramProfileState createState() => _TelegramProfileState();
}



class _TelegramProfileState extends State<TelegramProfile> {
  bool isFavorite = false;
  Stream<QuerySnapshot>? _userStream;
Color colorPrimary = Color(0xFF6055D8);
  @override
  void initState() {
    super.initState();
    _userStream = FirebaseFirestore.instance.collection('get').snapshots();
  }
   Widget buildContainer(
      String title, String description, String item, BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double mediumHeight =
        screenHeight / 3; // Set the height to be half of the screen height

    return Container(
      width: 480,
      height: mediumHeight -
          60, // Subtracting a small value to create a small difference in height
      margin: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: colorPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 24, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    item,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      height: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 180,
            height: mediumHeight, // Adjust the image height
            margin: EdgeInsets.only(left: 60),
            child: Image.asset('asset/images/cap_1.png'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var newwidth = MediaQuery.of(context).size.width;
    var newheight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SingleChildScrollView(
          
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
             Row(
                children: [
                  Container(
                   // margin: EdgeInsets.only(left: 16,),
                    child: const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("asset/images/cap_1.png",),
                    ),
                  ),
                  SizedBox(width: 16),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                      Text(
                        'Tom',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                   // margin: EdgeInsets.only(right: 16),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: const Icon(
                        Icons.notifications,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
 SizedBox(height: 16),
              Container(
               // margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.grey[300],
                        ),
                        child: 
                            
                           const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Searching Here',
                                  border: InputBorder.none,
                                  //contentPadding: EdgeInsets.symmetric(horizontal: 8),
                                ),
                              ),
                            ),
                          
                        
                      ),
                    ),
                  ],
                ),
              ),SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  buildContainer('   20% Off', 'Get Winter Discount','   For Childrens' ,context),
                  SizedBox(width: 16),
                  buildContainer('Valentine', '15% Discount',
                      'lovebirds unlock this pack', context),
                  SizedBox(width: 16),
                  buildContainer('Get stylish', '20% Off!',
                      'with this summer ', context),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: DotsIndicator(
                dotsCount: 3,
                position: 0, // Initial position
                decorator: DotsDecorator(
                  color: const Color.fromARGB(255, 236, 234, 234),
                  activeColor: colorPrimary,
                  size: Size(8, 8),
                  activeSize: Size(8, 8),
                  spacing: EdgeInsets.all(4),
                ),
              ),
            ), Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured',
                    style: GoogleFonts.roboto(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(), ));}, 
                child:Text(
                      'See All',
                      style: GoogleFonts.roboto(
                        color: colorPrimary,
                       
                      ),
                    ),
              )
                ],
              ),
              SizedBox(height: 8),
              Row(
                  children: [
                    SizedBox(
                        height: 250,
                        width: 450,
                        child: 
        StreamBuilder<QuerySnapshot>(
                                        stream: _userStream,
                                        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                                          if (snapshot.hasError) {
                                            return  Text('Something went wrong');
                                          }
                                      
                                                      if (snapshot.connectionState == ConnectionState.waiting) {
                                            return  SizedBox(height: 10,
                                            width: 10,
                                            child: CircularProgressIndicator());
                                          } 
                                          return ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                                  padding: EdgeInsets.only(left: 10),
                                                  itemCount: snapshot.data!.docs.length,
                                                  
                                                  itemBuilder: (context, index) {
                                                    QueryDocumentSnapshot<Object?>? ds =
                                                        snapshot.data?.docs[index];
                             return Column(
                               children: [
                                 
                                        
                                         SizedBox(
                                           height: 200,
                                            width: 200,
                                           child: 
                                            Card(
                                              
                                              child: 
                                             
                                               
                                                 ClipRRect(borderRadius: BorderRadius.circular(10),child: MyImage(ds?['ImageLink'])),
                                              
                                            )
                                         ),
                                                   
                                        
                                          
                                          
                                             Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                GestureDetector(
                                                onTap: () {
                                                 Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => MyPage(name: ds?['Name'],price: ds?['Price'],detail:ds?["Detail"], image:ds?['ImageLink'] ,)));
                                                },
                                                child: Text(ds?['Name'],style: GoogleFonts.slabo27px (fontWeight: FontWeight.bold, ),),
                                              ),
                                             Text(
                                                    ds?['Price'],
                                                                                    style:  GoogleFonts.slabo27px(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            
                                            color: colorPrimary,
                                                                                    ),
                                                                                  ),
                                              ]
                                            ),
                                          
                                               
                               ]
                             );
                                                  }
                                          );   
                                        }  
                           )         
                )
                             
                                            

              ]

           ) , 
           Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Featured',
                    style: GoogleFonts.roboto(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(), ));}, 
                child:Text(
                      'See All',
                      style: GoogleFonts.roboto(
                        color: colorPrimary,
                       
                      ),
                    ),
              )
                ],
              ),
          SizedBox(height: 8),
              Row(
                  children: [
                    SizedBox(
                        height: 250,
                        width: 450,
                        child: 
        StreamBuilder<QuerySnapshot>(
                                        stream: _userStream,
                                        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                                          if (snapshot.hasError) {
                                            return  Text('Something went wrong');
                                          }
                                           if (snapshot.connectionState == ConnectionState.waiting) {
                                            return SizedBox(height: 10,
                                            width: 10,
                                            child: CircularProgressIndicator());
                                          } 
                                                      
                                          return ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                                  padding: EdgeInsets.only(left: 10),
                                                  itemCount: snapshot.data!.docs.length,
                                                  
                                                  itemBuilder: (context, index) {
                                                    QueryDocumentSnapshot<Object?>? ds =
                                                        snapshot.data?.docs[index];
                             return Column(
                               children: [
                                 
                                        
                                         SizedBox(
                                           height: 200,
                                            width: 200,
                                           child: 
                                            Card(
                                              
                                              child: 
                                             
                                               
                                                 ClipRRect(borderRadius: BorderRadius.circular(10),child: MyImage(ds?['ImageLink'])),
                                              
                                            )
                                         ),
                                                   
                                        
                                          
                                          
                                             Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                GestureDetector(
                                                onTap: () {
                                                 Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => MyPage(name: ds?['Name'],price: ds?['Price'],detail:ds?["Detail"], image:ds?['ImageLink'] ,)));
                                                },
                                                child: Text(ds?['Name'],style: GoogleFonts.slabo27px (fontWeight: FontWeight.bold, ),),
                                              ),
                                             Text(
                                                    ds?['Price'],
                                                                                    style:  GoogleFonts.slabo27px(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            
                                            color: colorPrimary,
                                                                                    ),
                                                                                  ),
                                              ]
                                            ),
                                          
                                               
                               ]
                             );
                                                  }
                                          );   
                                        }  
                           )         
                )
                             
                                            

              ]

           )     
           




              

              
            
               
                      
                                          
                                        
                            
                        
                      
                  
                  
          
        
      
      
    
 ] )

)
      )
    );
  }
}