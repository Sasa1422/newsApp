import 'package:flutter/material.dart';

import '../../models/user.dart';


class UdersmodelScreen extends StatelessWidget {
List<userModel> users =[
  userModel(
      id: 1,
      name: 'mostafa mohammed',
      phone: '+021149232811'
  ),
  userModel(
      id: 2,
      name: 'Sayed mohammed',
      phone: '+021126448120'
  ),
  userModel(
      id: 3,
      name: 'mohanned mohammed',
      phone: '+021114525320'
  ),
  userModel(
      id: 4,
      name: ' mohammed',
      phone: '+021152586028'
  ),
  userModel(
      id: 1,
      name: 'mostafa mohammed',
      phone: '+021149232811'
  ),
  userModel(
      id: 2,
      name: 'Sayed mohammed',
      phone: '+021126448120'
  ),
  userModel(
      id: 3,
      name: 'mohanned mohammed',
      phone: '+021114525320'
  ),
  userModel(
      id: 4,
      name: ' mohammed',
      phone: '+021152586028'
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'users'
        ),
      ),
      body:ListView.separated(
          itemBuilder:(context ,index)=>buldmodel(users[index]),
          separatorBuilder: (context ,index)=>Container(
            height: 5,
            width: double.infinity,
            color: Colors.grey,
          ),
          itemCount:users.length)
    );
  }
  Widget buldmodel (userModel user)=>Padding(
    padding: EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          child: Text('${user.id}',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${user.name}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 10,),
              Text('${user.phone}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
            ],
          ),
        )
      ],
    ),
  );
}
