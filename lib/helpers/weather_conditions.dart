
// Defining the supported weather conditions
enum WeatherCondition {
  clear,
  clouds,
  sunWithClouds,
  mist,
  haze,
  thunderstorm
}

// Getting the name of a weather condition from a condition
String getWeatherConditionName(WeatherCondition condition) {
  switch (condition) {
    case WeatherCondition.clear:
      return "Clear";
    case WeatherCondition.clouds:
      return "Clouds";
    case WeatherCondition.mist:
      return "Mist";
    case WeatherCondition.sunWithClouds:
      return "Clouds";
    case WeatherCondition.haze:
      return "Haze";
    case WeatherCondition.thunderstorm:
      return "Thunderstorm";
    default:
      throw "Unsupported Weather Condition";
  }
}

// Returning location of the svg of the weather condition
String getWeatherConditionIcon(WeatherCondition condition) {
  switch (condition) {
    case WeatherCondition.clear:
      return "assets/svgs/sunny-svgrepo-com.svg";
    case WeatherCondition.clouds:
      return "assets/svgs/cloudy-cloud-svgrepo-com.svg";
    case WeatherCondition.mist:
      return "assets/svgs/waves-svgrepo-com.svg";
    case WeatherCondition.sunWithClouds:
      return "assets/svgs/cloudy-forecast-sun-svgrepo-com.svg";
    case WeatherCondition.haze:
      return "assets/svgs/hazy-svgrepo-com.svg";
    case WeatherCondition.thunderstorm:
      return "assets/svgs/thunderstorm-svgrepo-com.svg";
    default:
      throw "Unsupported Weather Condition";
  }
}
