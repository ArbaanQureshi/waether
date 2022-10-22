import 'package:waether/model/weather_model.dart';

abstract class WeatherState {}

class InitialState extends WeatherState {}

class LoadingState extends WeatherState {}

class FailedToLoad extends WeatherState{
  String error;
  FailedToLoad({this.error});
}

class RespondState extends WeatherState {
  final WeatherApi modelapi;
  RespondState({this.modelapi});
}
