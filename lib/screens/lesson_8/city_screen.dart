
import 'package:flutter/material.dart';
import 'package:flutter_kurs/utilities/constants/app_text_style.dart';
import 'package:flutter_kurs/utilities/constants/app_constants.dart';

// ignore: must_be_immutable
class CityScreen extends StatelessWidget {
  CityScreen({Key key}) : super(key: key);
  String cityName;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/weather/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: AppConstants.weatherTextFieldDecoration,
                  onChanged: (value) {
                    cityName = value;
                  },
                ),
              ),
              ElevatedButton(
                // style: ButtonStyle(
                //   backgroundColor: color: Colo
                // ),
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: const Text(
                  'Далее',
                  style: AppTextStyle.buttonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}