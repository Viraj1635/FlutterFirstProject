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
            border: Border.all(color: Colors.black54),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',style: GoogleFonts.nunito(textStyle: TextStyle(color: Colors.grey.shade500)),),
              Icon(Icons.search_rounded)
            ],
          ),
        ),

        // SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.0),
          child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 4),
                child: Container(
                  height: 40,
                  child:
                  Icon(Icons.filter_list_alt,color: Colors.white,),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12)
                ),),
              ),),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(right: 20.0,left: 4),
                child: Container(
                  height: 40,
                  child:
                Icon(Icons.sort_rounded,color: Colors.white),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12)
                  ),),
              ),)
            ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: value.getShoeList().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeCard(shoe: shoe,onTap: () => addShoe(shoe),);
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.75),

            ),
          ),
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
