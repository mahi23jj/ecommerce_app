import 'package:ecommerce/class/module.dart';
import 'package:ecommerce/class/new.dart';
import 'package:ecommerce/eden/cheak_out.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:google_fonts/google_fonts.dart';





class cartPage_2 extends StatefulWidget {
  const cartPage_2({super.key});

  @override
  State<cartPage_2> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage_2> {
      List<int> a = List.filled(100, 0);
   
    
   int totalsum=0;
void inc(int index){
  setState(() {
    a[index]++;
    
  });
}
void dec(int index){
  setState(() {
    a[index]--;
  });
}


  @override
  Widget build(BuildContext context) {
     final cartModel = Provider.of<Service>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo list'),
      ),
      body: 
        Column(
          children: [
            Expanded(
              child: Consumer<Service>(
            builder: (context, provider, child) {
              
               return ListView.builder(
                 
                 
                  itemCount: cartModel.items.length, // ?
                  itemBuilder: (context, index){
                    final product = provider.items[index];
                    int price = int.parse( cartModel.items[index].prices);
                                           int total = a[index] * price;
                                           
                                             totalsum+= total;
                   return Container(
          width: MediaQuery.of(context).size.width * 0.94,
          child: Card(
            shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
            ),
            color: Colors.white70,
            elevation: 10,
            child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.28,
                maxHeight: MediaQuery.of(context).size.width * 0.28,
              ),
              child:   ClipRRect(borderRadius: BorderRadius.circular(10),child: MyImage(cartModel.items[index].image)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    cartModel.items[index].title,
        
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
               Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                   cartModel.items[index].prices,
        
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 40, 0, 0),
            child: Column(
              children: <Widget>[
                     IconButton(onPressed: (){
                            
                          }, icon: const Icon(Icons.delete,color: Color.fromARGB(251, 194, 46, 5),)),
                          SizedBox(height: 5,),
                                            Row(
                                              children: [
                                                IconButton(onPressed: (){
                                                              inc(index);
                                                            }, icon: Icon(Icons.add)),
                                                             
                                                        Text('${a[index]}'),
                                                        IconButton(onPressed: (){
                                                          dec(index);
                                                        }, icon: Icon(Icons.minimize))
                                              ],
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
            Container(
              width: 700,
              height: 70,
              decoration: const BoxDecoration(gradient: LinearGradient(colors:[ Color.fromARGB(9, 88, 88, 226),Color.fromARGB(9, 88, 88, 226)]),
                  borderRadius: BorderRadius.all(Radius.circular(8)
                  ),
                  ),
              child:  Column(
                    children: [
                      Text('Number of documents: ${cartModel.items.length}'),
                      Text('subtotal is : $totalsum'),
                    
                      
                     
        
                    ],
                  )
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  child: ElevatedButton(onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    backgroundColor: Color(0xFF6055D8),
                  ),
                   child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => checkoutPage(),));},
                     child: Text('Check Out',
                     style: TextStyle(color: Colors.white,
                     fontSize: 20,
                     ),
                     
                     ),
                   ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),

                      ],
                    ),
        
        );
    
  



  }
}