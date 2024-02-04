import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_app/comp/hshoe_card.dart';
import 'package:first_app/home.dart';
import 'package:first_app/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'comp/navbar.dart';
import 'comp/shoe_card.dart';
import 'models/cart.dart';
import 'models/shoe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // int _selIndex=0;
  //
  // void navigateBar(int index){
  //   setState(() {
  //     _selIndex=index;
  //   });
  // }

  void addShoe(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItem(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Item Added to your cart!!!'),
      content: Text('Check cart'),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          // Container(
          //   child: Image.asset('assets/images/loading-g4R.gif',color: Colors.white,),
          // ),
          CarouselSlider(
            items: [

              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img6.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img9.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/img7.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 220.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),

          SizedBox(height: 8,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks🔥',style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight:FontWeight.bold,fontSize: 19)),),
              InkWell(
                onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) {
                  return home(selIndex: 1,);
                },)),
                  child: Text('See all',
                    style: GoogleFonts.nunito(
                        textStyle: TextStyle(color: Color.fromARGB(255, 214, 140, 69),
                            fontSize: 17,fontWeight: FontWeight.bold)
                    ),
                  )
              )
            ],
          ),

          SizedBox(height: 8,),

          Expanded(child: ListView.builder(
            itemCount: value.getHotList().length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = value.getHotList()[index];
              return HomeShoeCard(shoe: shoe,onTap: () => addShoe(shoe),);
            },
          )
          ),

          Padding(
            padding: EdgeInsets.only(top: 5.0,right: 5,left: 5),
            child: Divider(
              color: Colors.white,
            ),
          )

        ],
      ),
    ),);
  }
}
