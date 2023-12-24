import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResaltScreen extends StatelessWidget {
  final bool isMale;
 final int? result;
final double? age;
BMIResaltScreen({
 @required this.result,
 required this.isMale,
 @required this.age,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMIRESALT'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GENDER : ${isMale ? 'male' : 'fmale'}',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
            SizedBox(height: 20,),
            Text('resalt : $result',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            SizedBox(height: 20,),
            Text('age : $age',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
          ],
        ),
      ),
    );
  }
}
