import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/shared/network/remote/dio_helper.dart';


import '../../../medules/newsApp/busnes_Screen.dart';
import '../../../medules/newsApp/since_Screen.dart';
import '../../../medules/newsApp/sport_Screen.dart';
import 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(newsIntialState());

  static NewsCubit get(context)=>BlocProvider.of(context);

  int currentIndex =0;
  List<BottomNavigationBarItem> bottomItemes =
      [
        BottomNavigationBarItem(
            icon:Icon(
              Icons.business,
            ),
          label: 'BUSINESS'
        ),
        BottomNavigationBarItem(
            icon:Icon(
              Icons.sports,
            ),
            label: 'SPORTS'
        ),
        BottomNavigationBarItem(
            icon:Icon(
              Icons.science,
            ),
            label: 'SCIENCE'
        ),
      ];
  List<Widget> screens=[
    BusinessScreen(),
    SportsScreen(),
    SincesScreen(),
  ];

  void changeBottomNavBar(int index){

    currentIndex=index;
    emit(changeNewsBottomNav());
  }
  List<dynamic>? business=[];
  void getBusiness()
  {
    emit(NewsGetbuisnesLoadingState());
   DioHelper.getData(
       url:'v2/top-headlines',
       query: {
         'country':'eg',
         'category':'business',
         'apiKey':'75b88382bae74dd6970de74ce5202394',
       })?.then((value) {
         business=value?.data['articles'];
         print(business?[0]['titles']);
         emit(NewsGetBusinessSuccessState());
   }).catchError((error)
   {
     print(error.toString());
     emit(NewsGetBusinessErrorState(error.toString()));
   });
  }

  List<dynamic>? Sportes=[];
  void getSports()
  {
    emit(NewsGetSportsLoadingState());
    DioHelper.getData(
        url:'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'sports',
          'apiKey':'75b88382bae74dd6970de74ce5202394',
        })?.then((value) {
      Sportes=value?.data['articles'];
      print(Sportes?[0]['titles']);
      emit(NewsGetSportsSuccessState());
    }).catchError((error)
    {
      print(error.toString());
      emit(NewsGetSportsErrorState(error.toString()));
    });
  }

  List<dynamic>? Scinces=[];
  void getScinces()
  {
    emit(NewsGetScincesLoadingState());
    DioHelper.getData(
        url:'v2/top-headlines',
        query: {
          'country':'eg',
          'category':'science',
          'apiKey':'75b88382bae74dd6970de74ce5202394',
        })?.then((value) {
      business=value?.data['articles'];
      print(business?[0]['titles']);
      emit(NewsGetScincesSuccessState());
    }).catchError((error)
    {
      print(error.toString());
      emit(NewsGetScincesErrorState(error.toString()));
    });
  }



late  List<dynamic>? Search=[];
  void getSearch(String? value)
  {
    emit(NewsSearchLoadingState());
    DioHelper.getData(
        url:'v2/everything',
        query: {
          'q':'$value',
          'apiKey':'75b88382bae74dd6970de74ce5202394',
        })?.then((value) {
      Search=value?.data['articles'];
      print(Search?[0]['titles']);
      emit(NewsSearchSuccessState());
    }).catchError((error)
    {
      print(error.toString());
      emit(NewsSearchErrorState(error.toString()));
    });
  }


}