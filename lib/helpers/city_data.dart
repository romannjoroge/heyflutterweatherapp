enum City {
  paris,
  dubai,
  bangkok,
  barcelona,
  rome,
  newYork,
  beijing,
  london,
  minsk
}

// A function that takes an instance of the City enum and returns the name of the
// city that the enum represents
String getCityName(City city) {
  switch (city) {
    case City.paris:
      return "Paris";
    case City.dubai:
      return "Dubai";
    case City.bangkok:
      return "Bangkok";
    case City.barcelona:
      return "Barcelona";
    case City.rome:
      return "Rome";
    case City.newYork:
      return "New York";
    case City.beijing:
      return "Beijing";
    case City.london:
      return "London";
    case City.minsk:
      return "Minsk";
    default:
      throw "Unsupported City";
  }
}

// Returns the path to the image of the city
String getImage(City city) {
  switch (city) {
    case City.paris:
      return "assets/images/paris.png";
    case City.dubai:
      return "Dubai";
    case City.bangkok:
      return "Bangkok";
    case City.barcelona:
      return "Barcelona";
    case City.rome:
      return "Rome";
    case City.newYork:
      return "New York";
    case City.beijing:
      return "Beijing";
    case City.london:
      return "London";
    case City.minsk:
      return "Minsk";
    default:
      throw "Unsupported City";
  };
}