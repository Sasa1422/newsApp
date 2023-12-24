import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/medules/newsApp/searchScreen.dart';
import 'package:untitled2/shared/AppCupit/AppCupit.dart';

import 'news_cubit/news_cubit.dart';
import 'news_cubit/news_state.dart';

class newsLayout extends StatelessWidget {
  const newsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NewsCubit()..getBusiness()..getSports()..getScinces(),
      child: BlocConsumer<NewsCubit , NewsState>(
        listener: (context , state)=>{},
        builder: (context ,state){
         var cubit= NewsCubit.get(context);
          return Scaffold(
          appBar: AppBar(
          title: const Text(
          'NEWS App',
          ),
            actions: [
              IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>searchScreen()
                      ),
                    );
                  },
                  icon: const Icon(Icons.search)),

              IconButton(
                  onPressed: (){
                       AppCupit.get(context).ChangeAppMode();
                  },
                  icon: const Icon(Icons.brightness_4_outlined)),

            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNavBar(index);
            },
            items:cubit.bottomItemes ,
            ),
          );
        },

      ),
    );
  }
}
