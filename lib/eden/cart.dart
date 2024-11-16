// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/eden/cheak_out.dart';
import 'package:flutter/material.dart';




class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(128, 128, 128, 0.1)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      iconSize: 40,
                    ),
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(128, 128, 128, 0.1)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.more_vert,
                      ),
                      iconSize: 40,
                    ),
                  ),
                ]),
          ),
          SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(128, 128, 128, 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      child: Image.asset(
                        'asset/images/cap_1.png',
                        fit: BoxFit.fill,
                        width: 150,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Watch',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rolex',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 150),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '\$40',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF6055D8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(left:50,top: 15),
                       child:  IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 30,
                          ),
                        )
                     ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:10.0,right: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 29,
                            height: 29,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF6055D8),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                          SizedBox(width: 9,),
                          Text('02',
                          style: TextStyle(fontSize: 18),),
                          SizedBox(width: 9,),
                          Container(
                            height: 29,
                            width: 29,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF6055D8),
                                ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(128, 128, 128, 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      child: Image.asset(
                        'asset/images/cap_1.png',
                        fit: BoxFit.fill,
                        width: 150,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Airpods',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Apple',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 150),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '\$333',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF6055D8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 15),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color:Colors.red,
                          size: 30,
                        ),)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 29,
                            height: 29,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF6055D8),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            '02',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                            height: 29,
                            width: 29,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF6055D8),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(128, 128, 128, 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      child: Image.asset(
                        'asset/images/cap_1.png',
                        fit: BoxFit.fill,
                        width: 150,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hoodie',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'puma',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 150),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '\$50',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF6055D8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60, top: 15),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 30,
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 29,
                            height: 29,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF6055D8),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            '02',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Container(
                            height: 29,
                            width: 29,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF6055D8),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          SizedBox(height: 30,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(128, 128, 128, 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: 270,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            'Order Summary',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Items',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '3',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '\$423',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '\$4',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery charges',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '\$2',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Color.fromARGB(255, 163, 157, 157)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '\$423',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
          SizedBox(height: 20,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => checkoutPage(),));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    backgroundColor: Color(0xFF6055D8),
                  ),
                  child: Text(
                    'Check Out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ])
        ))
        )
        ;
  }
}