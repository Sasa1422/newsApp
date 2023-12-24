import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled2/layout/news_App/news_cubit/news_cubit.dart';
import 'package:untitled2/layout/news_App/news_layout.dart';
import 'package:untitled2/shared/AppCupit/AppCupit.dart';
import 'package:untitled2/shared/AppCupit/AppState.dart';
import 'package:untitled2/shared/bloc_observer.dart';
import 'package:untitled2/shared/network/local/cash_Helper.dart';
import 'package:untitled2/shared/network/remote/dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CachHelper.init();
   bool? isDark=CachHelper.getBoolean(key: 'isDark') ;


  runApp(MyApp(
        isDark!
  ));
}

class MyApp extends StatelessWidget {
   final bool isDark;
  const MyApp(this.isDark,
      {super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) =>
          AppCupit()
            ..ChangeAppMode(
              fromShared: isDark
            ),
        ),
        BlocProvider(
          create: (context) => NewsCubit()..getBusiness()..getSports()..getScinces(),
        ),
      ],
      child: BlocConsumer<AppCupit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                primarySwatch: Colors.deepOrange,
                appBarTheme: AppBarTheme(
                  titleSpacing: 20,
                  backgroundColor: Colors.white,
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.white,
                    statusBarIconBrightness: Brightness.light,

                  ),
                  elevation: 0,
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  iconTheme: IconThemeData(
                    color: Colors.black,
                  ),

                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.deepOrange,
                  unselectedItemColor: Colors.grey,
                  backgroundColor: Colors.white,
                ),
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: Colors.deepOrange
                ),
                textTheme: const TextTheme(
                    bodyLarge: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      color: Colors.black,
                    )
                )
            ),
            darkTheme: ThemeData(
                scaffoldBackgroundColor: HexColor('333739'),
                primarySwatch: Colors.deepOrange,
                appBarTheme: AppBarTheme(
                  titleSpacing: 20,
                  backgroundColor: HexColor('333739'),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: HexColor('333739'),
                    statusBarIconBrightness: Brightness.light,

                  ),
                  elevation: 0,
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),

                ),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.grey,
                    backgroundColor: HexColor('333739')
                ),
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                    backgroundColor: Colors.deepOrange
                ),
                textTheme: const TextTheme(
                    bodyLarge: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      color: Colors.white,
                    )
                )
            ),
            themeMode: AppCupit
                .get(context)
                .isDark ? ThemeMode.dark : ThemeMode.light,
            home: Directionality(
                textDirection: TextDirection.ltr,
                child: newsLayout()),

          );
        },
      ),
    );
  }
}
