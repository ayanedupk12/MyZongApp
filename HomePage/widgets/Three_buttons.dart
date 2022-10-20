import 'package:flutter/material.dart';

import '../assetsdata/buttons.dart';
class ThreeButtons extends StatelessWidget {
  const ThreeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: VerticalButton(
              colorc: Colors.white,
              textone: '0',
              texttwo: 'MB',
              textthree: 'remaining',
              textfour: '2 offers active',
              heightc: size.height/5,
              textstylec: TextStyle(fontSize: 10),
              widthc: size.width/4,
              funcn: () {}, iconone: Icon(Icons.wifi,color: Colors.green,size: 30,), csteps: 6,
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: VerticalButton(
              colorc: Colors.white,
              textone: '500',
              texttwo: 'MINS',
              textthree: 'remaining',
              textfour: '2 offers active',
              heightc: size.height/5,
              textstylec: TextStyle(fontSize: 10),
              widthc: size.width/4,
              funcn: () {}, iconone: Icon(Icons.call,color: Colors.green,size: 30,), csteps: 3,
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: VerticalButton(
              colorc: Colors.white,
              textone: '4900',
              texttwo: 'SMS',
              textthree: 'remaining',
              textfour: '2 offers active',
              heightc: size.height/5,
              textstylec: TextStyle(fontSize: 10),
              widthc: size.width/4,
              funcn: () {}, iconone: Icon(Icons.chat_bubble_outline,color: Colors.green,size: 30,), csteps: 4,
            )),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
