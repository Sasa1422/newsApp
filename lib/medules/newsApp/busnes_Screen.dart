import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/layout/news_App/news_cubit/news_cubit.dart';
import 'package:untitled2/layout/news_App/news_cubit/news_state.dart';
import 'package:untitled2/shared/components/componantes.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsState>(
      listener: (context ,state){},
        builder: (context ,state){
        var list=NewsCubit.get(context).business;
        return list!.isEmpty ? const Center(child: CircularProgressIndicator()) :
            ListView.separated(
              physics: BouncingScrollPhysics(),
                itemBuilder: (context,index)=>buildArticaleItem(list![index] ,context),
                separatorBuilder: (context,index)=>MyDvider(),
                itemCount: 10
            );
        },

    );
  }
}
