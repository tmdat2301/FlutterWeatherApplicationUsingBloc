// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';

class Weather {
  final String cityName;
  final double temperatureCelcius;
  Weather({this.cityName, this.temperatureCelcius});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Weather &&
        other.cityName == cityName &&
        other.temperatureCelcius == temperatureCelcius;
  }

  @override
  int get hashCode => cityName.hashCode ^ temperatureCelcius.hashCode;
}
