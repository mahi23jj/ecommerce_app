// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';



class orderPage extends StatefulWidget {
  const orderPage({super.key});

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
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
                ),
                Text(
                  'Orders',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Active',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 5,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xFF6055D8),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Completed',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cancel',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
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
                          'asset/images/watch.png',
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF6055D8),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13,
                              )),
                          onPressed: () {},
                          child: Text(
                            'Track Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                          'asset/images/airpod.png',
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
                            fontSize: 17,
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
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '\$333',
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF6055D8),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13,
                              )),
                          onPressed: () {},
                          child: Text(
                            'Track Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                          'asset/images/hoddi.png',
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
                            fontSize: 18,
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF6055D8),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13,
                              )),
                          onPressed: () {},
                          child: Text(
                            'Track Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 250,
            )
          ]),
        )));
  }
}