import 'package:aplication1/a.dart';
import 'package:aplication1/c.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//         child: Scaffold(
//           body: MyApp2(),
//         ),
//       )));
// }

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: heightScreen,
            width: widthScreen,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: Colors.white38),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: widthScreen,
                    height: 70,
                    decoration: const BoxDecoration(
                        //border: Border.all(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Icon(Icons.chevron_left,
                              color: Colors.white, size: 50),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageC()));
                          },
                        ),
                        const Text(
                          'Payment',
                          style: TextStyle(
                              color: Color.fromARGB(255, 208, 224, 224),
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Visby Round'),
                        ),
                        const Icon(Icons.circle_rounded,
                            color: Color.fromARGB(255, 211, 239, 251), size: 35)
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: widthScreen,
                      height: 560,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: <Color>[
                            Color.fromARGB(255, 71, 198, 250),
                            Color.fromARGB(255, 73, 200, 244),
                            Color.fromARGB(255, 65, 193, 254),
                            Color.fromARGB(255, 37, 143, 253),
                            Color.fromARGB(255, 37, 143, 253),
                            Color.fromARGB(255, 78, 210, 210),
                            Color.fromARGB(255, 89, 223, 170),
                            Color.fromARGB(255, 89, 223, 170),
                          ],
                        ),
                      ),
                    )),

                // ô 1
                Positioned(
                  left: 90,
                  top: 75,
                  child: Container(
                    width: 200,
                    height: 125,
                    decoration: BoxDecoration(
                        color:
                            const Color.fromARGB(255, 231, 249, 253).withOpacity(0.6),
                        border: Border.all(width: 1, color: Colors.white38),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: 210,
                            height: 27,
                            margin: const EdgeInsets.only(top: 25),
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.2),
                              border:
                                  Border.all(width: 1, color: Colors.white70),
                            )),
                        Container(
                            width: 50,
                            height: 13,
                            margin: const EdgeInsets.only(top: 23, right: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50))))
                      ],
                    ),
                  ),
                ),

                // ô 2
                Positioned(
                  left: 30,
                  top: 230,
                  child: Container(
                    width: 330,
                    height: 210,
                    decoration: BoxDecoration(
                      color:
                          const Color.fromARGB(255, 231, 249, 253).withOpacity(0.4),
                      border: Border.all(width: 1, color: Colors.white38),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 185,
                          height: 45,
                          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                          decoration: const BoxDecoration(
                              //border: Border.all(width: 3, color: Colors.blue),
                              ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Choose Your Payment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Visby Round',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Method',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Visby Round',
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 292,
                          height: 120,
                          margin: const EdgeInsets.fromLTRB(20, 0, 10, 10),
                          decoration: const BoxDecoration(
                              //border: Border.all(width: 3, color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.circle, color: Colors.white, size: 25),
                              Container(
                                width: 245,
                                height: 115,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(20))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 230,
                                      height: 30,
                                      margin:
                                          const EdgeInsets.only(left: 5, right: 5),
                                      padding: const EdgeInsets.only(left: 10),
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          //border: Border.all(width: 3, color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Select',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 208, 224, 224),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.lightBlueAccent,
                                            size: 23,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 230,
                                      height: 30,
                                      margin:
                                          const EdgeInsets.only(left: 5, right: 5),
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.only(left: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          //border: Border.all(width: 3, color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: const Text(
                                        'VISA',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                        width: 230,
                                        height: 30,
                                        margin:
                                            const EdgeInsets.only(left: 5, right: 5),
                                        alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.only(left: 10),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            //border: Border.all(width: 3, color: Colors.black),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: const Text(
                                          'Bank Transfer',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 208, 224, 224),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                        //Icon(Icons.circle, color: Colors.white,size: 20,mar)
                      ],
                    ),
                  ),
                ),

                //ô 3
                Positioned(
                  left: 30,
                  top: 465,
                  child: Container(
                    width: 330,
                    height: 135,
                    decoration: BoxDecoration(
                      color:
                          const Color.fromARGB(255, 231, 249, 253).withOpacity(0.4),
                      border: Border.all(width: 1, color: Colors.white38),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 270,
                          height: 23,
                          margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          decoration: const BoxDecoration(
                              //border: Border.all(width: 3, color: Colors.white),
                              ),
                          child: const Text(
                            'Choose Your Shipping Address',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Visby Round',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                            width: 300,
                            height: 60,
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 3, color: Colors.white),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20))),
                            child: const Text(
                              'Your address goes here',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 208, 224, 224),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    //padding: EdgeInsets.all(26),
                    width: widthScreen,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      //border: Border(top: BorderSide(color: Colors.white30, width: 3))
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
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
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
