// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:provider/single_child_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget singalProducts() {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        color: Color.fromARGB(217, 236, 240, 235),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            flex: 1,
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZAumNBJr83SulTE1zhDSVloSZmkdPYUH6ufvW3Ql0&s '),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'fresh Basil',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '50\$/50 Gram',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Expanded(
                                child: Text(
                                  '50 gram',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: Colors.yellow,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icons.remove,
                                size: 20,
                                color: Color(0xffd0b84c),
                              ),
                              Text(
                                '1',
                                style: TextStyle(color: Color(0xffd0b84c)),
                              ),
                              Icon(
                                Icons.add,
                                size: 20,
                                color: Color(0xffd0b84c),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listTilte({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      // ignore: prefer_const_constructors
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    // ignore: prefer_const_constructors
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 43,
                      // ignore: prefer_const_constructors
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ignore: prefer_const_constructors
                        Text("welcome Guest"),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 20,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text("Login"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              // ignore: prefer_const_constructors
              ListTile(
                leading: Icon(Icons.shop),
                title: Text("Review cart"),
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text("My Profile"),
              ),
              ListTile(
                leading: Icon(Icons.notifications_outlined),
                title: Text("Notification"),
              ),
              ListTile(
                leading: Icon(Icons.star_outline),
                title: Text("Rating & Review"),
              ),
              ListTile(
                leading: Icon(Icons.favorite_outline),
                title: Text("Wishlist"),
              ),
              ListTile(
                leading: Icon(Icons.copy_outlined),
                title: Text("Raise & Review"),
              ),
              ListTile(
                leading: Icon(Icons.format_quote_outlined),
                title: Text("FAQS"),
              ),
              Container(
                height: 300,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("contact Support"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text("Call us:"),
                        Text("8423684124"),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text("Mail us:"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("patel.@gmail.com"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      appBar: AppBar(
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          // ignore: prefer_const_constructors
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              radius: 12,
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 300, bottom: 10),
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50))),
                            child: Center(
                              child: Text(
                                'Vegi',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text(
                            '30% off',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text(
                            'on all vegetables product',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //   child: Container(),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Herbs Seasoning'),
                  Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('Fresh Fruits'),
                  Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
