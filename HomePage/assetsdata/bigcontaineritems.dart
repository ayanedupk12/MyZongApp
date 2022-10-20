import 'package:flutter/material.dart';

class BigContaineritem extends StatelessWidget {
  Icon iconc;
  final String textc;

  BigContaineritem({Key? key, required this.textc, required this.iconc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          iconc,
          SizedBox(height: 10,),
          Text(textc,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)
        ],
      ),
    );
  }
}
