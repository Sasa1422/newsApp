
import '../../shared/network/remote/dio_Caracters.dart';

class CharactersRepostory{
 dioCaracter? dio;
 CharactersRepostory(this.dio);
  static Future<dynamic>? getAllCharacter() async{
   List characters=await dioCaracter.getAllCharacter();
   return characters.map((Character) =>Character.fromJson(Character)).toList();
  }
}