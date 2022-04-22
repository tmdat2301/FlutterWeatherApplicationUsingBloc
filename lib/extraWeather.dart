// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_weather_application/dataset.dart';

class ExtraWeather extends StatelessWidget {
  final Weather temp;
  ExtraWeather(this.temp);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Transform.rotate(angle: -90*pi/180, child:Icon(
              CupertinoIcons.location_fill,
              color: Colors.white,
              
            ), ),
            
            SizedBox(
              height: 10,
            ),
            Text(
              temp.wind.toString() + " Km/h",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Wind",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              CupertinoIcons.drop,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              temp.humidity.toString() + " %",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Humidity",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              CupertinoIcons.cloud_rain,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              temp.chanceRain.toString() + " %",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Rain",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
