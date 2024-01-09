import 'package:first_app/comp/navbar.dart';
import 'package:first_app/home_page.dart';
import 'package:first_app/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'cart.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int _selIndex=0;

  void navigateBar(int index){
    setState(() {
      _selIndex=index;
    });
  }

  final List<Widget> _pages=[
    HomePage(),
    shop(),
    cart(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(44, 110, 73, 1),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.menu,color: Color.fromRGBO(149, 255, 195, 1),),
                )
            );
          }
        ),
      ),

      drawer: Drawer(
        backgroundColor: Color.fromRGBO(221, 177, 227, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child:
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
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   child: Divider(
                //     color: Color.fromRGBO(214, 140, 69, 1),
                //   ),
                // )
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: ListTile(
                    leading: Icon(Icons.home,color: Colors.black,),
                    title: Text('Home',style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.w700)),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: ListTile(
                    leading: Icon(Icons.info_outline,color: Colors.black,),
                    title: Text('Info',style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.w700)),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,bottom: 15),
              child: ListTile(
                leading: Icon(Icons.logout_rounded,color: Colors.black,),
                title: Text('Log out',style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.w700)),),
              ),
            )
          ],
        ),
      ),

      body: _pages[_selIndex],

      bottomNavigationBar: navbar(
        onTabChange: (index) => navigateBar(index),
      ),
    );
  }
}
