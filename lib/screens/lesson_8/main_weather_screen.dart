import 'package:flutter/material.dart';
import 'package:flutter_kurs/models/lesson_8/weather_model.dart';
import 'package:flutter_kurs/repositories/lesson_8/weather_repo.dart';
import 'package:flutter_kurs/screens/lesson_8/city_screen.dart';
import 'package:flutter_kurs/utilities/constants/app_text_style.dart';
import 'package:flutter_kurs/widgets/lesson_8/progress_indicator.dart';


//Flutter StatefulWidget lifecycle
class MainWeatherScreen extends StatefulWidget {
  const MainWeatherScreen({Key key}) : super(key: key);

  @override
  _MainWeatherScreenState createState() => _MainWeatherScreenState();
}

class _MainWeatherScreenState extends State<MainWeatherScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //final _formKey = GlobalKey<FormState>();
  //final TextEditingController _cityNameController = TextEditingController();
  //Position _position;

  bool isLoading = false;

  WeatherModel weatherModel;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    getWeatherByCurrentLocation();

  }

  Future<void> getWeatherByCurrentLocation() async {
    setState(() {
      isLoading = true;
    });

    weatherModel = await weatherRepo.getWeatherByCurrentLocation();

    setState(() {
      isLoading = false;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
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
          child: isLoading
              ? circularProgress()
              : SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () async {
                              getWeatherByCurrentLocation();
                            },
                            child: const Icon(
                              Icons.near_me,
                              size: 50.0,
                            ),
                          ),
                          FlatButton(
                            onPressed: () async {
                              String typedCity = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CityScreen();
                                  },
                                ),
                              );

                              if (typedCity != null) {
                                setState(() {
                                  isLoading = true;
                                });
                                weatherModel = await weatherRepo
                                  .getWeatherByCity(typedCity);
                                await Future.delayed(const Duration(seconds: 1));

                                setState(() {
                                  isLoading = false;
                                });
                              }
                            },
                            child: const Icon(
                              Icons.location_city,
                              size: 50.0,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '${weatherModel.celcius}',
                              style: AppTextStyle.tempTextStyle,
                            ),
                            Text(
                              weatherModel.icon ?? '☀️',
                              style: AppTextStyle.conditionTextStyle,
                            ),
                            
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          weatherModel.message == null
                              ? 'Погода в  ${weatherModel.cityName}'
                              : '${weatherModel.message} в ${weatherModel.cityName}',
                          textAlign: TextAlign.right,
                          style: AppTextStyle.messageTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}