import 'package:flutter/material.dart';
import 'package:flutter_kurs/app/providers/lesson_8_provider.dart';
import 'package:flutter_kurs/app/screens/lesson_8/city_screen.dart';
import 'package:flutter_kurs/app/utilities/constants/app_text_style.dart';
import 'package:provider/provider.dart';

class MainWeatherScreen2 extends StatefulWidget {
  MainWeatherScreen2({Key key}) : super(key: key);

  @override
  State<MainWeatherScreen2> createState() => _MainWeatherScreen2State();
}

class _MainWeatherScreen2State extends State<MainWeatherScreen2> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    context.watch<Lesson8Provider>().getWeatherByCurrentLocation();

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Lesson8Provider>(
      builder: (context, provider, snapshot) {
        return Scaffold(
        key: scaffoldKey,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/weather/location_background.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.8), BlendMode.dstATop),
            ),
          ),
          constraints: const BoxConstraints.expand(),
          child:SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () async {
                        provider.getWeatherByCurrentLocation();
                      },
                      icon: const Icon(
                        Icons.near_me,
                        size: 50.0,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.location_city,
                        size: 50.0,
                      ),
                      onPressed: () async {
                        String typedCity = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CityScreen();
                            },
                          ),
                        );
                        provider.getWeatherByCity(typedCity);
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '${provider.weatherModel.celcius}',
                        style: AppTextStyle.tempTextStyle,
                      ),
                      Text(
                        provider.weatherModel.icon ?? '??????',
                        style: AppTextStyle.conditionTextStyle,
                      ),                            
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    provider.weatherModel.message == null
                      ? '???????????? ??  ${provider.weatherModel.cityName}'
                      : '${provider.weatherModel.message} ?? ${provider.weatherModel.cityName}',
                    textAlign: TextAlign.right,
                    style: AppTextStyle.messageTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),      
    );
      });
    
  }
}

