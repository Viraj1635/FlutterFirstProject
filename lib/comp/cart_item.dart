import 'package:first_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key,required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeFromCart(){
    Provider.of<Cart>(context,listen: false).removeItem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8)
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: ClipRRect(borderRadius: BorderRadius.circular(6),child: Image.asset(widget.shoe.imagePath)),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(icon: Icon(Icons.delete_outline_rounded),onPressed: removeFromCart,color: Colors.black,),
      ),
    );
  }
}
