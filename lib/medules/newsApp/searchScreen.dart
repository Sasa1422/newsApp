import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/layout/news_App/news_cubit/news_cubit.dart';
import 'package:untitled2/layout/news_App/news_cubit/news_state.dart';

import '../../shared/components/componantes.dart';

class searchScreen extends StatelessWidget {
  searchScreen({super.key});

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
      },
      builder: (context, state) {
  var list=NewsCubit.get(context).Search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: defoultFormField(
                    controller: searchController,
                    type: TextInputType.text,
                    onChanged: (value)
                    {
                      NewsCubit.get(context).getSearch(value);
                    },

                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Srarch must not be null';
                      }
                      return null;
                    },
                    label: 'Search',
                    prefix: Icons.search,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) =>
                        buildArticaleItem(list![index], context),
                    separatorBuilder: (context, index) => MyDvider(),
                    itemCount: 10
                ),
              ),


            ],
          ),
        );
      },
    );
  }
}
