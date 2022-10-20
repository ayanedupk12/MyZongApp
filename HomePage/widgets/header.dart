import 'package:flutter/material.dart';

import '../assetsdata/AsseetsData.dart';
import '../assetsdata/buttons.dart';
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '03103453503',
                style: kBH3,
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                            text: '2.6 ',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 25,
                            )),
                        TextSpan(
                            text: 'PKR',
                            style:
                            TextStyle(color: Colors.black, fontSize: 20)),
                      ])),
              SizedBox(
                height: 10,
              ),
              Text(
                'Expires on 25th Dec, 2022',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NormalButton(
                colorc: Colors.white,
                text: 'Recharge',
                heightc: size.width / 9,
                widthc: size.width / 4 + 30,
                textstylec: TextStyle(color: Colors.green),
                funcn: () {},
              ),
              SizedBox(
                height: 10,
              ),
              NormalButton(
                colorc: Colors.orange,
                text: 'Pay Loan',
                heightc: size.width / 9,
                widthc: size.width / 4 + 30,
                textstylec: TextStyle(color: Colors.white),
                funcn: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
