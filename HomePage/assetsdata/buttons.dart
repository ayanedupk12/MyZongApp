import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class NormalButton extends StatelessWidget {
  final String text;
  final Color colorc;
  double widthc;
  double heightc;
  var textstylec;
  final VoidCallback funcn;

  NormalButton(
      {Key? key,
      required this.colorc,
      required this.text,
      required this.heightc,
      required this.textstylec,
      required this.widthc,
      required this.funcn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funcn,
      child: Container(
        width: widthc,
        height: heightc,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: colorc,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: Offset(0, 3))
            ]),
        child: Center(
            child: Text(
          text,
          style: textstylec,
        )),
      ),
    );
  }
}

class VerticalButton extends StatelessWidget {
  final String textone;
  final String texttwo;
  final String textthree;
  final String textfour;
  final Icon iconone;
  final Color colorc;
  double widthc;
  double heightc;
  var textstylec;
  final VoidCallback funcn;
  int csteps;

  VerticalButton(
      {Key? key,
      required this.colorc,
      required this.iconone,
      required this.textone,
      required this.texttwo,
      required this.textthree,
      required this.textfour,
      required this.heightc,
      required this.textstylec,
      required this.widthc,
      required this.funcn,
      required this.csteps
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: funcn,
      child: Container(
        width: widthc,
        height: heightc,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorc,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0,6))
            ]),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            iconone,
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textone,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.pink),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  texttwo,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textthree,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            //todo: progress line
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: new LinearProgressBar(
                maxSteps: 6,
                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                currentStep: csteps,
                progressColor: Colors.red,
                backgroundColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              textfour,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),


          ],
        )),
      ),
    );
  }
}
