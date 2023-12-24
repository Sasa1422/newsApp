import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MasengerScreen extends StatelessWidget {
  const MasengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
            ),
            SizedBox(width: 10,),
            Text('chats',
            style: TextStyle(
              color: Colors.black,

            ),)
          ],
        ),
        titleSpacing: 20,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: IconButton(onPressed: (){},
                icon:Icon (Icons.camera_alt,
                color: Colors.white,)),
          ),
          SizedBox(width: 5,),
          CircleAvatar(backgroundColor: Colors.blue,
            child: IconButton(onPressed: (){},
                icon: const Icon(Icons.edit,
                color: Colors.white,)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5)
              ),
              padding:EdgeInsets.all(5) ,
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  Text('Search'),
                ],
              ),
            ),
            SizedBox(height: 10,),
           Container(
             height: 100,
             child: ListView.separated(
               scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index)=>buldStoryitem(),
                 separatorBuilder:(context,index)=> SizedBox(width: 20,),
                 itemCount: 5),
           ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [

                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.green,
                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            children: [
                              Text('Mostafa mohammed',
                                maxLines: 1,
                                overflow:TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 10,),
                              Text('hello mostafa ',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],

                          ),
                        ),
                        SizedBox(width: 60,),
                        Text('2:12 Am'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            )

             

          ],
        ),
      ),
    );
  }
  Widget buldStoryitem()=>Row(
  children: [
  Container(
  width: 60,
  child: Column(
  children: [
  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 25,
  backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),

  ),
  CircleAvatar(
  radius: 8,
  backgroundColor: Colors.white
  ,
  ),
  CircleAvatar(
  radius: 7,
  backgroundColor: Colors.green,
  ),
  ],
  ),
  SizedBox(height: 10,),
  Text('Mostafa mohammed elsayed',
  maxLines: 2,
  overflow: TextOverflow.ellipsis,)

  ],
  ),
  ),
  SizedBox(width:20 ,),Container(
  width: 60,
  child: Column(
  children: [
  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 25,
  backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),

  ),
  CircleAvatar(
  radius: 8,
  backgroundColor: Colors.white
  ,
  ),
  CircleAvatar(
  radius: 7,
  backgroundColor: Colors.green,
  ),
  ],
  ),
  SizedBox(height: 10,),
  Text('Mostafa mohammed elsayed',
  maxLines: 2,
  overflow: TextOverflow.ellipsis,)

  ],
  ),
  ),
  SizedBox(width:20 ,),
  Container(
  width: 60,
  child: Column(
  children: [
  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 25,
  backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),

  ),
  CircleAvatar(
  radius: 8,
  backgroundColor: Colors.white
  ,
  ),
  CircleAvatar(
  radius: 7,
  backgroundColor: Colors.green,
  ),
  ],
  ),
  SizedBox(height: 10,),
  Text('Mostafa mohammed elsayed',
  maxLines: 2,
  overflow: TextOverflow.ellipsis,)

  ],
  ),
  ),
  SizedBox(width:20 ,),
  Container(
  width: 60,
  child: Column(
  children: [
  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 25,
  backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),

  ),
  CircleAvatar(
  radius: 8,
  backgroundColor: Colors.white
  ,
  ),
  CircleAvatar(
  radius: 7,
  backgroundColor: Colors.green,
  ),
  ],
  ),
  SizedBox(height: 10,),
  Text('Mostafa mohammed elsayed',
  maxLines: 2,
  overflow: TextOverflow.ellipsis,)

  ],
  ),
  ),
  SizedBox(width:20 ,),
  Container(
  width: 60,
  child: Column(
  children: [
  Stack(
  alignment: AlignmentDirectional.bottomEnd,
  children: [
  CircleAvatar(
  radius: 25,
  backgroundImage: NetworkImage('https://www.facebook.com/photo/?fbid=309431798260979&set=a.109250878279073&locale=ar_AR'),

  ),
  CircleAvatar(
  radius: 8,
  backgroundColor: Colors.white
  ,
  ),
  CircleAvatar(
  radius: 7,
  backgroundColor: Colors.green,
  ),
  ],
  ),
  SizedBox(height: 10,),
  Text('Mostafa mohammed elsayed',
  maxLines: 2,
  overflow: TextOverflow.ellipsis,)

  ],
  ),
  ),
  SizedBox(width:20 ,),

  ],
  );
}
