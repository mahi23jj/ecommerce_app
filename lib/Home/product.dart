import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/class/module.dart';
import 'package:ecommerce/class/new.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Stream<QuerySnapshot>? _userStream;
  Color colorPrimary = Color(0xFF6055D8);
  
  bool isWatchFavorite = false;
  bool isShoesFavorite = false;
  bool isLgTvFavorite = false;
  bool isAirPodsFavorite = false;
  bool isHoddiFavorite = false;
  bool isJacketFavorite = false;
  bool isTshirtFavorite = false;
  bool isTroutherFavorite = false;
  bool isPlusTouchedWatch = false;
  bool isPlusTouchedShoes = false;
  bool isPlusTouchedLgTv = false;
  bool isPlusTouchedAirPods = false;
  bool isplusTouchedHoddi = false;
  bool isplusTouchedJacket = false;
  bool isplusTouchedTshirt = false;
  bool isplusTouchedTrouther = false;


@override
  void initState() {
    super.initState();
    _userStream = FirebaseFirestore.instance.collection('get').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    var newwidth = MediaQuery.of(context).size.width;
    var newheight = MediaQuery.of(context).size.height;
    final cartModel = Provider.of<Service>(context);
     Color colorPrimary = Color(0xFF6055D8);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            // Handle back button pres
          },
        ),
        title: Text('Products'),
      ),
      body:Wrap(
        alignment: WrapAlignment.spaceBetween
        ,
        runSpacing: 4,

        spacing: 8,
                  children: [
                    
                    SizedBox(
                        height: newheight,
                        width: newwidth,
                        child: 
                           StreamBuilder<QuerySnapshot>(
                                        stream: _userStream,
                                        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                                          if (snapshot.hasError) {
                                            return  Text('Something went wrong');
                                          }
                                      
                                          if (snapshot.connectionState == ConnectionState.waiting) {
                                            return CircularProgressIndicator();
                                          }               
                                          return GridView.builder(
                                          
                                            shrinkWrap: true,
                                            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,childAspectRatio: 1),
                                           // scrollDirection: Axis.horizontal,
                                                  padding: EdgeInsets.zero,
                                                  itemCount: snapshot.data!.docs.length,
                                                  
                                                  itemBuilder: (context, index) {
                                                    QueryDocumentSnapshot<Object?>? ds =
                                                        snapshot.data?.docs[index];
                             return  Card(
                               child: Expanded(
                                                     
                                                         child: Column(
                                                           children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isWatchFavorite = !isWatchFavorite;
                                    });
                                  },
                                  child: Container(
                                    width: 200,
                                    height: 150,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                       ClipRRect(borderRadius: BorderRadius.circular(10),child: MyImage(ds?['ImageLink'])),
                                        Icon(
                                          isWatchFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: isWatchFavorite
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(ds?['Name'], style: GoogleFonts.roboto(fontSize: 20)),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0,left: 10,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(ds?['Price'],
                                          style: TextStyle(color: colorPrimary)),
                                      SizedBox(width: 5),
                                      GestureDetector(
                                        onTap: () {
                                         cartModel.addItem(Product(title:ds?['Name'] , prices:ds?['Price'] , image:ds?['ImageLink']));
                                        },
                                        child:  CircleAvatar(
                                          backgroundColor: colorPrimary,
                                          radius: 12,
                                          child: Icon(
                                            Icons.add,
                                            color: 
                                                 Colors.white,
                                                
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                                           ],
                                                         ),
                                                       
                                                     
                                                   ),
                             );





                                                  }
                                          );
                                        }
                            ),
                        ),
      
                      
                  ],
                               ),
    );
  }
}
