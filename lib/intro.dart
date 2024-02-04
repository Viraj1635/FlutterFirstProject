import 'dart:async';

import 'package:first_app/home.dart';
import 'package:first_app/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login(),));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/back5.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Container(
            color: Color.fromARGB( 80, 255, 255, 255),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(height: 140,),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container(
                      child: Image.asset('assets/images/converse.png',height: 120,),
                    ),flex: 6,),
                    Expanded(child: Container(
                      child:  Center(child: Text('X',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
                    ),flex: 1,),
                    Expanded(child: Container(
                      child: Image.asset('assets/images/nike.png'),
                    ),flex: 6,),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(height: 150,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('The Unofficial collaboration of \nNike and Converse !!!!',
                      style: GoogleFonts.nunito(textStyle:
                        TextStyle(fontSize: 20,fontWeight: FontWeight.w700,)
                      ),
                      textAlign: TextAlign.center,
                    )
                  ]
                ),
                Row(
                  children: [
                    SizedBox(height: 40,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Enjoy shopping stylish and unique shoes.',
                      style: GoogleFonts.nunito(textStyle:
                      TextStyle(fontSize: 16,fontWeight: FontWeight.w500,)
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(height: 130,),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.all(10),
                //   child: GestureDetector(
                //     onTap: () {
                //       Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
                //     },
                //     child: Container(
                //       padding: EdgeInsets.all(15),
                //       decoration: BoxDecoration(
                //         color: Color.fromRGBO(44, 110, 73, 1),
                //         borderRadius: BorderRadius.circular(20)
                //       ),
                //       child: Center(
                //         child: Text('Get Started!!!',
                //           style: GoogleFonts.nunito(textStyle: TextStyle(
                //             fontSize: 17,
                //             color: Colors.white,
                //             fontWeight: FontWeight.w500
                //           )),
                //         ),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
