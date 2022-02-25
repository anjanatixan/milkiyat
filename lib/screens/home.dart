import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
            child: ListView(
          children: [
            SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
              //  dotSize: 5.0,
               // dotSpacing: 15.0,
               // dotPosition: DotPosition.bottomCenter,
                images: [
                  Image.asset('assets/images/images1.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/images.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/images2.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/images3.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/images4.jpg', fit: BoxFit.cover),
                ],
              ),
            )
          ],
        )),
      
    );
  }
}