class WeatherModel {
  String cityName;
  String countryName;
  String localTime;
  double celciusTemprature;
  double farhanheitTemprature;
  String condition;
  String iconLink;

  WeatherModel(
      this.cityName,
      this.countryName,
      this.localTime,
      this.celciusTemprature,
      this.farhanheitTemprature,
      this.condition,
      this.iconLink);

  static fromJson(Map<dynamic, String> json) {
    // return WeatherModel(json[''], countryName, localTime, celciusTemprature, farhanheitTemprature, condition, iconLink)
  }
}
