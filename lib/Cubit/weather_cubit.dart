import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether/Cubit/weather_state.dart';
import 'package:waether/Reposotory/api.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final api = ApiService();
  WeatherCubit() : super(InitialState());

  Future<void> get Weather async {
    var data = await api.getPost();
    emit(RespondState(modelapi:data));
  }
}
