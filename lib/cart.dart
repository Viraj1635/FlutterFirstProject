import 'package:first_app/models/cart.dart';
import 'package:first_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'comp/cart_item.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Cart',style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),),

          SizedBox(height: 10,),

          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                Shoe indiShoe= value.getUserCart()[index];

                return CartItem(shoe: indiShoe);
              },
            )
          )

        ],
      ),
    ),
    );
  }
}
