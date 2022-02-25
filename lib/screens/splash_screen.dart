import 'package:flutter/material.dart';
import 'package:milkiyat/screens/otp_screen.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({ Key? key }) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   @override
  void initState(){
    gotoLogin();
    super.initState();
  }

Future<void>gotoLogin()async{
  await Future.delayed(const Duration(seconds: 3));
  Navigator.of(context).push( MaterialPageRoute(builder: (context)=>const OtpScreen()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 250,
              decoration:const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.fill)
              ),
            ),
          const SizedBox(height: 40,),
         Container(
              width: 80,
              child:const LinearProgressIndicator(valueColor:AlwaysStoppedAnimation<Color>(Colors.black)))
          ],
        ),
      ),
    );
  }
}