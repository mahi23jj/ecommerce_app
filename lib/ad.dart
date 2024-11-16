import 'package:flutter/material.dart';



class page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
             SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildContainer('20% Off', 'Get Winter Discount For Children '),
             
              SizedBox(width: 16),
              buildContainer(
                'Get stylish',
                'Get stylish this summer with 20% off! ',
              ),
              SizedBox(width: 16),
              buildContainer(
                '10% off',
                'lovebirds unlock this pack for valentine🌹',
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String title, String description) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      width: 300,
      height: 200,
      margin: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: Color.fromARGB(225, 82, 55, 236),
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
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      height: 2,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
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
            width: 59,
            height: 140,
            margin: EdgeInsets.only(left: 30),
            child: Image.asset('asset/images/cap_1.png'),
          ),
        ],
      ),
    );
  }
}
