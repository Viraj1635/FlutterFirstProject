import 'package:first_app/comp/hshoe_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'comp/shoe_card.dart';
import 'models/cart.dart';
import 'models/shoe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Container(
            child: Image.asset('assets/images/loading-g4R.gif',color: Colors.white,),
          ),

          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks🔥',style: GoogleFonts.nunito(textStyle: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 19)),),
              Text('See all',style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromARGB(255, 214, 140, 69),fontSize: 17,fontWeight: FontWeight.bold)),)
            ],
          ),

          SizedBox(height: 20,),

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
            padding: EdgeInsets.only(top: 25.0,right: 25,left: 25),
            child: Divider(
              color: Colors.white,
            ),
          )

        ],
      ),
    ),);
  }
}
