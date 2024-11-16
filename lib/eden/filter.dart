// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:flutter/material.dart';


class filterPage extends StatefulWidget {
  const filterPage({super.key});

  @override
  State<filterPage> createState() => _filterPageState();
}

class _filterPageState extends State<filterPage> {
  RangeValues values = RangeValues(0, 90);
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
                      iconSize: 25,
                    ),
                  ),
                ),
                Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gender',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF6055D8),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(128, 128, 128, 0.1),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Men',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 150),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(128, 128, 128, 0.1),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Woman',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 150),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Brand',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(128, 128, 128, 0.1),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Adidas',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 150),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF6055D8),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Puma',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(128, 128, 128, 0.1),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'CR7',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 150),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF6055D8),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Nike',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(128, 128, 128, 0.1),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Yeezy',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 150),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF6055D8),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Supreme',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Price Range',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$16',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '\$543',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SliderTheme(data: SliderThemeData(activeTickMarkColor:Color(0xFF6055D8),
            inactiveTickMarkColor: Colors.transparent,
            ), 

            child:  RangeSlider(
                  values: values,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  onChanged: (values) {
                    setState(() {
                      this.values = values;
                    });
                  }),
            ),
           
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Color',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(128, 128, 128, 0.1),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'White',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 150),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF6055D8),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Black',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 7),
                    Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(128, 128, 128, 0.1),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Grey',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 150),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF6055D8),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Yellow',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(128, 128, 128, 0.1),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Red',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 150),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF6055D8),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Green',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      backgroundColor: Color.fromRGBO(128, 128, 128, 0.1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Another option',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chevron_right),
                          color: Colors.black,
                          iconSize: 40,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      backgroundColor: Color(0xFF6055D8),
                    ),
                    child: Text(
                      'Apply Filter',
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
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}