import 'package:first_app/comp/field.dart';
import 'package:first_app/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

final _formkey=GlobalKey<FormState>();

class login extends StatelessWidget {
  login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final userVali =(value) {
    if (value!.isEmpty) {
      return 'ENTER USERNAME';
    }
  };

  final passVali = (value) {
    if (value!.isEmpty) {
      return 'ENTER PASSWORD';
    }
    if (value.length < 6) {
      return 'ENTER VALID PASSWORD OF LENGTH 10';
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset('assets/images/back5.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Container(
            color: Color.fromARGB( 80, 255, 255, 255),
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 50,),

                  Icon( Icons.lock,size: 90,),

                  SizedBox(height: 40,),

                  Text('Login !!!',
                    style: GoogleFonts.nunito(
                        textStyle: TextStyle(fontSize: 21,fontWeight: FontWeight.w700,)
                    ),
                  ),

                  SizedBox(height: 30,),

                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Field(lableText: 'Name',controller: usernameController,obscureText: false,val: userVali,),

                        SizedBox(height: 20,),

                        Field(lableText: 'Password',controller: passwordController,obscureText: true,val: passVali,),

                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("forgot password?",style: TextStyle(color: Colors.grey.shade800),)
                            ],
                          ),
                        ),

                        SizedBox(height: 20,),

                        Container(
                          height: 60,
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child:
                          InkWell(
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(
                                        builder: (context) => home(),));
                                }
                              },
                              child: Center(child: Text("Log in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),))
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(44, 110, 73, 1),
                              borderRadius: BorderRadius.circular(12)
                          ),),
                      ],
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(10),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       Navigator.push(context, MaterialPageRoute(builder: (context) => home(),));
                  //     },
                  //     child: Container(
                  //       padding: EdgeInsets.all(15),
                  //       decoration: BoxDecoration(
                  //         color: Color.fromRGBO(44, 110, 73, 1),
                  //         borderRadius: BorderRadius.circular(20)
                  //       ),
                  //       child: Center(
                  //         child: Text('Get Started!!!',
                  //           style: GoogleFonts.nunito(textStyle: TextStyle(
                  //             fontSize: 17,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.w500
                  //           )),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
