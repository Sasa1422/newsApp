import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMIResalt_Screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool ismale=true;
  double hight=120;
  double wight=40;
  double age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale=true;
                          });
                        },
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ismale? Colors.blue :Colors.grey
                          ),
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.male,
                              size: 60,
                                color: Colors.black,
                              ),
                              SizedBox(height: 20,),
                              Text('MALE',
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                  color: Colors.black
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale=false;
                          });
                        },
                        child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: !ismale? Colors.blue :Colors.grey
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.female,
                                size: 60,
                                color: Colors.black,
                              ),
                              SizedBox(height: 20,),
                              Text('FMALE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.black
                                ),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                width: double.infinity,

                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('HEIGHT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black
                      ),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${hight.round()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black
                          ),),
                        Text('cm',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.black
                          ),),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Slider(value: hight,
                      onChanged: (value){
                      setState(() {
                        hight=value;
                      });

                      print(value.round());
                      },
                      max: 220,
                      min: 120,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black
                              ),),
                            SizedBox(height: 10,),
                            Text('${age}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black
                              ),),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(

                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  mini: true,
                                child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(

                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WIGHT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black
                              ),),
                            SizedBox(height: 10,),
                            Text('${wight}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black
                              ),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FloatingActionButton(

                                  onPressed: (){
                                    setState(() {
                                      wight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(

                                  onPressed: (){
                                    setState(() {
                                      wight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: MaterialButton(height: 60,
              color: Colors.blue,

              onPressed: (){

                    double result=wight / pow(hight /  100 , 2 );
                    print(result.round());

              Navigator.push(
                context,
             MaterialPageRoute(
                 builder:(context)=>  BMIResaltScreen(
                   isMale: ismale,
                   age: age,
                   result: result.round(),
                 )) );
              },
              child: const Text('Calculat',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),),
          ),
     
      ],),
    );
  }
}
