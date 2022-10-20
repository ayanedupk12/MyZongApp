import 'package:flutter/material.dart';

import 'AsseetsData.dart';
class ContainerTwoItem extends StatelessWidget {
  String yctext;
  String packagename;
  Icon iconone;
  Icon icontwo;
  String quantityone;
  String quantitytwo;
  String quantitytypeone;
  String quantitytypetwo;
  String realprice;
  String previousprice;
  String validity;
  final VoidCallback subscribe;
  ContainerTwoItem({
    Key? key,
  required this.iconone,
  required this.icontwo,
  required this.packagename,
  required this.previousprice,
  required this.quantityone,
  required this.quantitytwo,
  required this.quantitytypeone,
  required this.quantitytypetwo,
  required this.realprice,
  required this.subscribe,
  required this.validity,
  required this.yctext
  }) : super(
      key: key
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width-40,
        height: size.width -145,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: size.width/5-30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 17,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text(yctext,style: TextStyle(color: Colors.white,fontSize: 10),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(packagename,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(height: size.width/4-20,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 1),
                  Column(
                    children: [
                      iconone,
                      SizedBox(height:5),
                      Text('$quantityone MBS',style: kBH2,),
                      SizedBox(height:5),
                      Text(quantitytypeone,style: kH2,)
                    ],
                  ),
                  Column(
                    children: [
                      icontwo,
                      SizedBox(height:5),
                      Text(quantitytwo,style: kBH2,),
                      SizedBox(height:5),
                      Text(quantitytypetwo,style: kH2,)
                    ],
                  ),
                  SizedBox(width: 1,),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Divider(color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(text: TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: realprice,style: TextStyle(fontSize: 15,color: Colors.green)),
                            TextSpan(text: 'Required Recharge',style: TextStyle(fontSize: 10,color:Colors.grey))
                          ]
                      ),),
                      RichText(text: TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough),
                          children: [
                            TextSpan(text: previousprice,style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.6))),
                            TextSpan(text: '  Required Recharge',style: TextStyle(fontSize: 10,color:Colors.grey),)
                          ]
                      ),),
                      RichText(text: TextSpan(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: 'Validity:  ',style: TextStyle(fontSize: 15,color: Colors.green)),
                            TextSpan(text: validity,style: TextStyle(fontSize: 13,color:Colors.grey))
                          ]
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
