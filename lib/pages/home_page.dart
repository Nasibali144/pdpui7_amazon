import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Image(
          width: 100,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/amazon_logo.png'),
        ),
        actions: [
          IconButton(icon: Icon(Icons.mic, color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: null),
        ],
      ),

      body: Column(
        children: [
          // #search
          Container(
            padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
            color: Color(0xFF018197),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Color(0xFF018197),),
                        hintText: 'What are you looking for?',
                      ),
                    ),
                  ),
                  Icon(Icons.camera_alt, color: Color(0xFF018197),)
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // #location
                Container(
                  height: 45,
                  color: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text('Deliver to Korea, Republic of', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),

                // #adds
                Container(
                  height: 140,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(right: Radius.circular(70)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/image_1.jpeg'),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('We ship 45million products', style: TextStyle(fontSize: 16),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                // #signin
                Container(
                  height: 160,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign in for the best experience', style: TextStyle(fontSize: 18),),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        height: 50,
                        color: Colors.orange,
                        alignment: Alignment.center,
                        child: Text('Sign in', style: TextStyle(fontSize: 18),),
                      ),
                      Text('Create an account', style: TextStyle(color: Colors.blueAccent, fontSize: 18),)
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                // #deal
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Deal of the Day', style: TextStyle(fontSize: 22),),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        height: 240,
                        width: double.infinity,
                        child: Image(
                          image: AssetImage('assets/images/item_7.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Up to 31% off APC UPS Battery Back', style: TextStyle(fontSize: 17),),
                      SizedBox(height: 6,),
                      Text('\$10.99 - \$79.9', style: TextStyle(fontSize: 17),)
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                // #best
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                        child: Text('Best sellers in Electronics', style: TextStyle(fontSize: 22),),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/item_7.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/item_6.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/item_5.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/item_4.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

                // #top
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Top products in Camera', style: TextStyle(fontSize: 22),),
                      SizedBox(height: 16,),
                      Container(
                        height: MediaQuery.of(context).size.width - 32, // 32 ayirilgani bu containerni ustidagi containerning paddingiga 16 berdagmiz ikki yoni 16ga qisqargan
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage('assets/images/item_7.jpeg'),
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/item_3.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    child: Image(
                                      image: AssetImage('assets/images/item_2.jpeg'),
                                      fit: BoxFit.cover,
                                      height: double.infinity,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

              ],
            ),
          ),
        ],
      ),

      drawer: Drawer(),
    );
  }
}
