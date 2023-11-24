
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

// Get the file location of the svg to show for the next days weather
String getNextDayWeatherConditionIcon(WeatherCondition condition) {
  switch (condition) {
    case WeatherCondition.clear:
      return "assets/svgs/sunny-mini-display.svg";
    case WeatherCondition.clouds:
      return "assets/svgs/cloudy-svgrepo-com.svg";
    case WeatherCondition.mist:
      return "assets/svgs/waves-svgrepo-com.svg";
    case WeatherCondition.sunWithClouds:
      return "assets/svgs/partial-cloudy-mini.svg";
    case WeatherCondition.haze:
      return "assets/svgs/hazy-svgrepo-com.svg";
    case WeatherCondition.thunderstorm:
      return "assets/svgs/rainy-mini.svg";
    default:
      throw "Unsupported Weather Condition";
  }
}

WeatherCondition parseConditionFromDescription(String description) {
  var lowercaseDescription = description.toLowerCase();
  if (lowercaseDescription.contains("clear conditions") == true || lowercaseDescription.contains('no rain') == true) {
    return WeatherCondition.clear;
  } else if (lowercaseDescription.contains("becoming cloudy") == true || lowercaseDescription.contains("cloud cover") == true || lowercaseDescription.contains('funnel') == true || lowercaseDescription.contains('cloudy skies') == true) {
    return WeatherCondition.clouds;
  } else if (lowercaseDescription.contains('dew') == true) {
    return WeatherCondition.mist;
  } else if (lowercaseDescription.contains('precipition') == true || lowercaseDescription.contains('rain') || lowercaseDescription.contains('storm') || lowercaseDescription.contains('thunderstorm')) {
    return WeatherCondition.thunderstorm;
  } else if (lowercaseDescription.contains('partial') == true) {
    return WeatherCondition.sunWithClouds;
  }else {
    return WeatherCondition.clear;
  }
}