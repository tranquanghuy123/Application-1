import 'package:aplication1/a.dart';
import 'package:aplication1/b.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: SafeArea(
//       child: MyApp(),
//     ),
//   ));
// }

class PageC extends StatelessWidget {
  const PageC({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    print(heightScreen);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: widthScreen,
          height: heightScreen,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border: Border.all(width: 0, color: Colors.yellow)),
          child: Column(
            children: [
              Container(
                width: widthScreen,
                height: 629,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 250, 255),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  //border: Border.all(width: 1)
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // o 1
                      Container(
                        width: widthScreen,
                        height: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          //border: Border.all(width: 1, color: Colors.red),
                        ),

                        //o 1
                        child: Stack(
                          children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  width: widthScreen,
                                  height: 230,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.elliptical(60, 40),
                                        bottomRight: Radius.elliptical(60, 40),
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment(0.6, 1),
                                      colors: <Color>[
                                        Color.fromARGB(255, 37, 143, 253),
                                        Color.fromARGB(255, 37, 143, 253),
                                        Color.fromARGB(255, 37, 143, 253),
                                        Color.fromARGB(255, 37, 143, 253),
                                        Color.fromARGB(255, 37, 143, 253),
                                        Color.fromARGB(255, 37, 143, 253),
                                        Color.fromARGB(255, 65, 193, 254),
                                        Color.fromARGB(255, 78, 210, 210),
                                        Color.fromARGB(255, 89, 223, 170),
                                        Color.fromARGB(255, 89, 223, 170),
                                      ],
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        width: 350,
                                        //decoration: BoxDecoration(
                                        //border: Border.all(width: 2)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            GestureDetector(
                                              child: Image(
                                                  image: AssetImage(
                                                      'lib/icons/apps1.png')),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PageA()),
                                                );
                                              },
                                            ),
                                            Container(
                                                height: 40,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    //border: Border.all(width: 2)
                                                    ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text('Hello, John Smith',
                                                        style: TextStyle(
                                                            fontSize: 11.5,
                                                            color: Colors
                                                                .grey[300])),
                                                    Text('New York, USA',
                                                        style: TextStyle(
                                                            fontSize: 11.5,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.white)),
                                                  ],
                                                )),
                                            Image(
                                                image: AssetImage(
                                                    'lib/icons/circle.png')),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          margin:
                                              EdgeInsets.fromLTRB(0, 37, 0, 30),
                                          padding:
                                              EdgeInsets.fromLTRB(15, 5, 0, 5),
                                          height: 43,
                                          width: 350,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: Image(
                                              image: AssetImage(
                                                  'lib/icons/search4.png'))),
                                    ],
                                  ),
                                )),
                            Positioned(
                                top: 170,
                                left: 30,
                                child: Container(
                                  height: 100,
                                  width: 320,
                                  //color: Colors.grey,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 80.0,
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                    255, 231, 249, 253)
                                                .withOpacity(0.7),
                                            border: Border.all(
                                                width: 2,
                                                color: Colors.white38),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextButton(
                                          child: Icon(
                                            Icons.calendar_month,
                                            size: 50,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Container(
                                        height: 80.0,
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                    255, 231, 249, 253)
                                                .withOpacity(0.7),
                                            border: Border.all(
                                                width: 2,
                                                color: Colors.white38),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextButton(
                                          child: Icon(
                                            Icons.chat,
                                            size: 50,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Container(
                                        height: 80.0,
                                        width: 80.0,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                    255, 231, 249, 253)
                                                .withOpacity(0.7),
                                            border: Border.all(
                                                width: 2,
                                                color: Colors.white38),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: TextButton(
                                          child: Icon(
                                            Icons.place,
                                            size: 50,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),

                      SizedBox(height: 20, width: 20),

                      //o 2
                      Container(
                        height: 205,
                        width: widthScreen,
                        //decoration: BoxDecoration(
                        //border: Border.all(width: 2)),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(25, 0, 25, 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Featured',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 77, 89, 135)),
                                  ),
                                  Text(
                                    'View All',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            Color.fromARGB(255, 200, 219, 218)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 170,
                              width: widthScreen,
                              margin: EdgeInsets.only(left: 20),
                              //color: Colors.lightGreenAccent,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 20, width: 20),

                      //o 3
                      Container(
                        height: 205,
                        width: widthScreen,
                        //decoration: BoxDecoration(
                        //border: Border.all(width: 2)),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(25, 0, 25, 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Best Seller',
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 77, 89, 135)),
                                  ),
                                  Text(
                                    'View All',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            Color.fromARGB(255, 200, 219, 218)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 170,
                              width: widthScreen,
                              margin: EdgeInsets.only(left: 20),
                              //color: Colors.lightGreenAccent,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 160,
                                      width: 120,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      child: Image(
                                        image:
                                            AssetImage('lib/icons/heart.png'),
                                        alignment: Alignment.topRight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 219, 226, 249),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(5,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // apps
              Container(
                width: widthScreen,
                height: 89.90909,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  //border: Border.all(width: 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 211, 239, 251),
                        size: 35,
                      ),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PageC()));
                      },
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.work,
                        color: Color.fromARGB(255, 211, 239, 251),
                        size: 35,
                      ),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PageB()));
                      },
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.menu,
                        color: Color.fromARGB(255, 211, 239, 251),
                        size: 35,
                      ),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PageA()));
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
