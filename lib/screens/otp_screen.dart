import 'package:flutter/material.dart';
import 'package:milkiyat/bottom_nav_bar.dart';
import 'package:milkiyat/const.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({ Key? key }) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
      Backgroundimage(),
      Scaffold(
       backgroundColor: Colors.transparent,
       body: SafeArea(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Login",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w900),),
                   Text("Enter your mobile number to get started",style: TextStyle(color: Colors.white60),),
                   SizedBox(height: 20),
                    TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.orange)
                            ),
                            filled: true,
                            fillColor:Colors.brown,
                            suffixIcon:const Icon(Icons.phone_android),
                            prefixIcon:const Icon(Icons.phone,color: Colors.black),
                            prefixText: '+91  ',prefixStyle:const TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 16),
                            hintText: "Phone Number",hintStyle:const TextStyle(fontFamily: 'Poppins',),
                            ),
                                 
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                 Row(
                                   children: [
                                     Ink(
                                         child: IconButton(onPressed: (){
                                           //Navigator.of(context).push( MaterialPageRoute(builder: (context)=>const PhoneNumber()));
                                         }, icon: Icon(Icons.arrow_forward),
                                         color: Colors.white,
                                         splashRadius: 40,
                                         disabledColor: Colors.blueGrey ),
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(10),
                                           color: Colors.white70
                                         )
                                         ),
                                         const SizedBox(width: 10,),
                                         const Text("SEND OTP",style: TextStyle(
                                         fontSize: 20,  
                                         color: Colors.white,fontWeight: FontWeight.bold),),
                                         ],
                                        ),
                                      TextButton(onPressed: (){
                                        Navigator.of(context).push( MaterialPageRoute(builder: (context)=>const BottomNavBar()));
                                      }, child: const Text("Skip",style: TextStyle(color: Colors.white),)),
                                    ],
                               ),
                              ),
                              
                      
                        ],
               ),
             ),
             const SizedBox(height: 15),
              Container(
                       width:MediaQuery.of(context).size.width,
                       height: 80,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const [
                           Text("Term of Use   | ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                         //  SizedBox(width: 10),
                           Text("  Privacy Policy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                         ],
                       ),
                       decoration:const BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                        )
                         ),
                         
                        )
                           ],
                       ),
                 ),
                 )
                ]);

  }
}

