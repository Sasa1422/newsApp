abstract class NewsState {}

class newsIntialState extends NewsState{}

class changeNewsBottomNav extends NewsState{}

class NewsGetbuisnesLoadingState extends NewsState{}

class NewsGetBusinessSuccessState extends NewsState{}

class NewsGetBusinessErrorState extends NewsState{
  late final String? error;
  NewsGetBusinessErrorState(this.error);
}
class NewsGetSportsLoadingState extends NewsState{}

class NewsGetSportsSuccessState extends NewsState{}

class NewsGetSportsErrorState extends NewsState{
  late final String? error;
  NewsGetSportsErrorState(this.error);
}
class NewsGetScincesLoadingState extends NewsState{}

class NewsGetScincesSuccessState extends NewsState{}

class NewsGetScincesErrorState extends NewsState{
  late final String? error;
  NewsGetScincesErrorState(this.error);
}

class NewsSearchLoadingState extends NewsState{}

class NewsSearchSuccessState extends NewsState{}

class NewsSearchErrorState extends NewsState{
  late final String? error;
  NewsSearchErrorState(this.error);
}
class ChangeAppModeState extends NewsState{}