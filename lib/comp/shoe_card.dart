import 'package:first_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoeCard extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeCard({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20,top: 20),
      width: 250,
      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 201, 185),borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset(shoe.imagePath,height: 290,)),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Text(shoe.description,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.normal)),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),),
                    SizedBox(height: 5,),
                    Text(shoe.price,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,color: Colors.grey.shade600)),),
                    SizedBox(height: 5,),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(220, 221, 177, 227),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(44, 110, 73, 1),
                      ),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
