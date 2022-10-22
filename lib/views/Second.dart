import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether/Cubit/weather_cubit.dart';
import 'package:waether/Cubit/weather_state.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 236, 132, 100),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if(state is LoadingState){
            return const CircularProgressIndicator();
          }else if(state is RespondState){
            return
               Column(
                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Container(
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${state.modelapi.sys.country}, ${state.modelapi.name}',style: TextStyle(fontSize: 30,),),
                       SizedBox(height: 20,),
                        Text('${state.modelapi.weather.first.main}',style: TextStyle(fontSize: 30,),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Lat ${state.modelapi.coord.lat.toString()}'),SizedBox(width: 10,),
                            Text('Lon ${state.modelapi.coord.lon.toString()}'),
                          ],
                        )
                      ],
                    ),
                    ),

                Container(
                  height: 463,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.wind.speed}",style: TextStyle(fontSize: 20,color: Colors.white),),
                                Icon(Icons.speed,color: Colors.white,),
                                Text("Wind Speed",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ),
                          Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.main.temp}",style: TextStyle(fontSize: 20,color: Colors.white),),
                                Icon(Icons.ac_unit_outlined,color: Colors.white,),
                                Text("Temperature",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.main.pressure}",style: TextStyle(fontSize: 20,color: Colors.white),),
                                Icon(Icons.format_align_center,color: Colors.white,),
                                Text("Pressure",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ),
                        ],
                      ),

                      //second Row
                      Container(
                        height: 100,
                        width: 345,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.wind.deg}",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                Icon(Icons.circle_outlined,color: Colors.white,),
                                Text("Degree",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.wind.gust}",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                Icon(Icons.golf_course,color: Colors.white,),
                                Text("Gust  ",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.main.feelsLike}",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                Icon(Icons.face,color: Colors.white,),
                                Text("Feel",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.timezone}",style: TextStyle(fontSize: 20,color: Colors.blue),),
                                Icon(Icons.timelapse,color: Colors.white,),
                                Text("Time Zone",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                      ),

                      //Third Row
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.wind.speed}",style: TextStyle(fontSize: 20,color: Colors.white),),
                                Icon(Icons.speed,color: Colors.white,),
                                Text("Wind Speed",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ),
                          Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.main.temp}",style: TextStyle(fontSize: 20,color: Colors.white),),
                                Icon(Icons.ac_unit_outlined,color: Colors.white,),
                                Text("Temperature",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${state.modelapi.main.pressure}",style: TextStyle(fontSize: 20,color: Colors.white),),
                                Icon(Icons.format_align_center,color: Colors.white,),
                                Text("Pressure",style: TextStyle(fontSize: 20,color: Colors.white),),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            );
          }else{
            Container();
          }
        },
      ),
    );
  }
}
