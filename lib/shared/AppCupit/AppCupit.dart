import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/shared/AppCupit/AppState.dart';
import 'package:untitled2/shared/network/local/cash_Helper.dart';

class AppCupit extends Cubit<AppStates>
{
  AppCupit():super(IntialAppState());
   static AppCupit get(context)=>BlocProvider.of(context);
  bool isDark=false;

  void ChangeAppMode({bool? fromShared})
  {
    if (fromShared !=null ){
      isDark=fromShared;
      emit(ChangeAppModeState());

    }else{
      isDark = !isDark;
      CachHelper.putBoolean(key: 'isDark', value: isDark)?.then((value) {
        emit(ChangeAppModeState());


      });
    }

  }

}