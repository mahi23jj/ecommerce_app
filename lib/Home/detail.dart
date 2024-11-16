//import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecommerce/class/new.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class MyPage extends StatefulWidget {
  String name,detail,price,image;
  
  MyPage({required this.name,required this.detail,required this.price,required this.image});
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool isHeartPressed = false;
  bool isStarPressed = false;
  bool isBuyNowPressed = false;
  int selectedSize = -1;
  bool isItemBought = false;
  int cartItemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                             width: 400.0,
                              height: 240.0,
                            child: Card(
                              child: MyImage(widget.image),
                             
                            ),
                          ),
                          Positioned(
                            top: 0.0,
                            right: 0.0,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isHeartPressed = !isHeartPressed;
                                });
                              },
                              child: Icon(
                                Icons.favorite,
                                color:
                                    isHeartPressed ? Colors.red : Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
            Row(
              children: [
                Text(
                         widget.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ]
            ),
                Row(
                  children: [
                    Text(
                      widget.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
               
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(width: 5,),
                Text('4.5',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Text('( 20 Review )',style: TextStyle(color: Colors.grey),)
              ],
            ),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Text(
                 widget.detail,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Size',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 44.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSizeBox(8),
                _buildSizeBox(10),
                _buildSizeBox(30),
                _buildSizeBox(40),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isBuyNowPressed = !isBuyNowPressed;
                if (isBuyNowPressed) {
                  cartItemCount++;
                  isItemBought = true;
                } else {
                  cartItemCount--;
                  isItemBought = false;
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    isItemBought ? 'Bought' : 'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
                SizedBox(width: 10.0),
                Icon(Icons.shopping_cart),
                SizedBox(width: 5.0),
                Text(
                  cartItemCount.toString(),
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget _buildSizeBox(int size) {
    bool isSelected = selectedSize == size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        width: 44.0,
        height: 44.0,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey,
            width: 2.0,
            style: isItemBought ? BorderStyle.solid : BorderStyle.solid,
          ),
        ),
        child: Center(
          child: Text(
            isSelected && isItemBought ? 'Sell' : size.toString(),
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
