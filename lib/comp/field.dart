import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final controller;
  final String lableText;
  final bool obscureText;
  final val;

  const Field({super.key,required this.controller,required this.lableText,required this.obscureText,required this.val});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        controller: controller,
        validator: val,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(44, 110, 73, 1),width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green,width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green,width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          labelText: lableText,
          labelStyle: TextStyle(color: Colors.grey.shade800),
          floatingLabelStyle: TextStyle(color: Color.fromRGBO(44, 110, 73, 1),fontSize: 18,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
