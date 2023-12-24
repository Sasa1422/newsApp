import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class dioCaracter{
 static Dio? dio;
 static int()
 {
   dio=Dio(
     BaseOptions(
       baseUrl: 'https://www.breakingbadapi.com/api/',
       receiveDataWhenStatusError: true,

     )
   );
 }
 static Future<dynamic>? getAllCharacter() async
 {
   try{
     Response? response=  await dio?.get('characters' );
     print(response?.data);
     return response?.data;
   }catch(e){
     if (kDebugMode) {
       print(e.toString());
     }
     return [];
   }

 }
}