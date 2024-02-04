import 'package:first_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoeCard extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeCard({super.key,required this.shoe,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(top: 10,left: 4,right: 4),
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12),border: Border.all(color: Colors.black)),
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset(shoe.imagePath,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(shoe.name,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),),
                          SizedBox(height: 2,),
                          Text(shoe.price,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.grey.shade600)),),
                          SizedBox(height: 2,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 11.0),
            //   child: Text(shoe.description,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 10)),),
            // ),

            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 135,
                margin: EdgeInsets.only(bottom: 8),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            )

          ],
        ),
      ),
      onTap: () => showDialog(context: context, builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content: Container(
          // decoration: BoxDecoration(color: Color.fromARGB(255, 255, 201, 185),borderRadius: BorderRadius.circular(12)),
          height: 530,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset(shoe.imagePath,)),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Text(shoe.description,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 14)),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(shoe.name,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 19)),),
                            SizedBox(height: 2,),
                            Text(shoe.price,style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,color: Colors.grey.shade800)),),
                            SizedBox(height: 2,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 49,
                  width: 230,
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.add,
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
