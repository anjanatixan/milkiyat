import 'package:flutter/material.dart';

class Backgroundimage extends StatelessWidget {
  const Backgroundimage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(colors: [Colors.orange,Colors.white],
      begin: Alignment.bottomCenter,
      end: Alignment.center).createShader(bounds),
      blendMode: BlendMode.darken,


      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:const AssetImage("assets/images/pic1.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.orange.withOpacity(0.2), BlendMode.dstATop))
        ),
      ),
    );
  }
}