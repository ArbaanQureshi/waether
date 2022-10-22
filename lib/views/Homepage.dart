

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether/Reposotory/api.dart';
import 'package:waether/model/weather_model.dart';

import '../Cubit/weather_cubit.dart';
import '../Cubit/weather_state.dart';
import 'Second.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather API APP"),
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: const CircularProgressIndicator(),
            );
          }
         else if (state is RespondState) {
            return MainScreen();
          }
         else{
           return Container();
          }
        },
      ),
    );
  }
}
