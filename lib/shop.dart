import 'package:first_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'comp/shoe_card.dart';
import 'models/shoe.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {

  void addShoe(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItem(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Item Added to your cart!!!'),
      content: Text('Check cart'),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',style: GoogleFonts.nunito(textStyle: TextStyle(color: Color.fromRGBO(44, 110, 73, 50))),),
              Icon(Icons.search_rounded)
            ],
          ),
        ),


        SizedBox(height: 10,),

        Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(child:
                Icon(Icons.filter_list_alt),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 201, 185),
                    borderRadius: BorderRadius.circular(20)
              ),),
            ),),
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(child:
              Icon(Icons.sort_rounded,),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 201, 185),
                    borderRadius: BorderRadius.circular(20)
                ),),
            ),)
          ],
        ),

        Expanded(child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            Shoe shoe = value.getShoeList()[index];
            return ShoeCard(shoe: shoe,onTap: () => addShoe(shoe),);
          },
        )
        ),

        // Padding(
        //   padding: EdgeInsets.only(top: 25.0,right: 25,left: 25),
        //   child: Divider(
        //     color: Colors.white,
        //   ),
        // )

      ],
    ),
    );
  }
}
