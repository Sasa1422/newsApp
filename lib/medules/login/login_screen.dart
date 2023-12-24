import 'package:flutter/material.dart';

import '../../shared/components/componantes.dart';

class loginScreen extends StatelessWidget {

var emailcontroller=TextEditingController();
var paswordcontroller=TextEditingController();
var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key:formKey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'email address not be empty';
                      }
                      return null;
                    },
                    onChanged: (value)
                    {
                      print(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email Adress',
                      prefixIcon: Icon(
                        Icons.email
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: paswordcontroller,
                    obscureText:true ,
                    keyboardType: TextInputType.number,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'password must not be empty';
                      }
                      return null;
                    },
                    onChanged: (value){
                      print (value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'pasward',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  defoultButton(
                    width:double.infinity,
                    text:'login',
                    background: Colors.blue,
                    onPressed:(){
                      if(formKey.currentState!.validate())
                        {
                          print(emailcontroller.text);
                          print(paswordcontroller.text);
                        }
                    }
                  ),
                  const SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an acount?'),
                      SizedBox(width: 10,),
                      TextButton(onPressed: (){},
                          child:Text('Rigester Now')
                      )
                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
