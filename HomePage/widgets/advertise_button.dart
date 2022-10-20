import 'package:doctor/HomePage/assetsdata/AsseetsData.dart';
import 'package:flutter/material.dart';
class AdvertizeButton extends StatelessWidget {
  const AdvertizeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width-40,
      height: size.width/4-20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 4,
                blurRadius: 7,
                offset: Offset(0,6)
            )
          ]
      ),
      child: Center(child: Text('Advertisement button',style: kBH1,),),
    );
  }
}
