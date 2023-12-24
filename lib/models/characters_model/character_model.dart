class Character{
  int? chsrId;
  String? name;
  String? nicName;
  String? image;
  List<dynamic>? jobs;
  String? statesifDidorAlife;
  List<dynamic>? apperantesOfSeasons;
  String? actorName;
  String? CategoryFor2;
  List<dynamic>? callSoulApperant;

  Character.fromJson (Map<String,dynamic> jason)
  {
   chsrId=jason['char_id'] ;
   name=jason['name'] ;
   nicName=jason['nickname'] ;
   image=jason['img'] ;
   jobs=jason['occupation'] ;
   statesifDidorAlife=jason['status'] ;
   apperantesOfSeasons=jason['appearance'] ;
   actorName=jason['portrayed'] ;
   CategoryFor2=jason['category'] ;
   callSoulApperant=jason['better_call_saul_appearance'] ;

  }
}