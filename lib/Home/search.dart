import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/class/module.dart';
import 'package:ecommerce/class/new.dart';
import 'package:ecommerce/eden/filter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

//import 'package:first/search.dart';

class searching extends StatefulWidget {
  const searching({super.key});

  @override
  _searching createState() => _searching();
}

class _searching extends State<searching> {
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
  //String searchText = '';
  String name='';
  Stream<QuerySnapshot>? _userStream;
  List<String> items = ['red', 'black', 'blue', 'green', 'yellow'];

  List<String> get filteredItems {
    if (name.isEmpty) {
      return items;
    } else {
      return items.where((item) => item.contains(name)).toList();
    }
  }
  @override
  void initState() {
    super.initState();
    _userStream = FirebaseFirestore.instance.collection('get').snapshots();
  }


  @override
  Widget build(BuildContext context) {
    Color colorPrimary = Color(0xFF6055D8);
      var newwidth = MediaQuery.of(context).size.width;
    var newheight = MediaQuery.of(context).size.height;
    final cartModel = Provider.of<Service>(context);
    //var newwidth = MediaQuery.of(context).size.width;
    //var newheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Search...',
                        ),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Handle search icon tapped
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      filteredItems.isEmpty
                          ? 'No items found'
                          : '${filteredItems.length} items found',
                      style: TextStyle(color: Color.fromARGB(255, 79, 35, 238)),
                    ),
                    IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>filterPage() ,)), icon: Icon(Icons.filter))
                  ],
                ),
              ),
               Wrap(
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
                                            return SizedBox(height: 10,
                                            width: 10,
                                            child: CircularProgressIndicator());
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
                              if (ds!['Name'].toString().toLowerCase().startsWith(name.toLowerCase()))       {

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
                                         cartModel.addItem(Product(title:ds?['Name'] , prices:ds?['Price'] , image:ds['ImageLink'] ));
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
                                                  }
                                          );
                                        
                                          
                                        }
  
                            ),
                        ),
      
                      
                  ],
                               ),


            ],
          ),
        ),
      ),
    );
  }
}
