// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/eden/order.dart';
import 'package:ecommerce/eden/payment.dart';
import 'package:flutter/material.dart';


class checkoutPage extends StatefulWidget {
  const checkoutPage({super.key});

  @override
  State<checkoutPage> createState() => _checkoutPageState();
}

class _checkoutPageState extends State<checkoutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xFF6055D8),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
                      children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(128, 128, 128, 0.1)
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back,),
                      iconSize: 40,
                    ),
                  ),
                ),
                Text(
                  'Check Out',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 70,),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(128, 128, 128, 0.1)

                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on,
                        color: Color(0xFF6055D8),
                      ),
                      iconSize: 40,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('325 15th Eighth Avenue, NewYork',
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Saepe eaque fugiat ea voluptatum veniam',
                          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 150),
                          fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Row(children: [
               Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(173, 216, 230, 0.5)


                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.access_time_filled,
                        color:  Color(0xFF6055D8),),
                        iconSize: 40,
                      ),
                    ),
                    SizedBox(width: 15,),
                  Text('6:00 pm, wednesday 20',
                  style: TextStyle(fontSize: 20,
                  
                  ),),
              ],),
            ),
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Container(
                decoration: BoxDecoration(
                color:  Color.fromRGBO(128, 128, 128, 0.1),
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
                        padding: const EdgeInsets.only(top:15),
                        child: Text('Order Summary',
                        style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Items',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                      Text('3',
                      style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                    ],),
                  ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal',
                        style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                        ),
                        Text('\$423',
                        style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                      ],
                                         ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Discount',
                        style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                        Text('\$4',
                        style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                      ],
                                         ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:10),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery charges',
                        style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                        Text('\$2',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                      ],
                                         ),
                   ),
                  Divider(
                    color: Color.fromARGB(255, 163, 157, 157)
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10,bottom: 10),
                        child: Text('Total',
                         style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                         ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10),
                        child: Text('\$423',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Text('Choose payment method',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            
            Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(left:22.0),
                child: Container(
                  height: 35,
                  width: 35,
                  child: Image.asset('Icons/paypal.png',
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Text('Paypal',
              style: TextStyle(
                fontSize: 23
              ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       Container(
                        height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(128, 128, 128, 0.1)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(null),
                          ),
                        ),
                    ],
                  ),
                ),
              )
            ],),
             SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'asset/images/Mastercard.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Credit Card',
                  style: TextStyle(fontSize: 23),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         Container(
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(128, 128, 128, 0.1)),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                            },
                            icon: Icon(Icons.check,
                            color: Color(0xFF6055D8),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      'Icons/cash.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Cash',
                  style: TextStyle(fontSize: 23),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(128, 128, 128, 0.1)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(null),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:22),
                  child: Text('Add new payment method',
                  style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(128, 128, 128, 0.1)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add,
                      color: Color.fromARGB(255, 69, 62, 146) ,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
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
                    onTap: () => orderPage(),
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
          )
      ),
    );
  }
}