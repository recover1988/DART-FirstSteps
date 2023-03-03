class Location {
  final double lat;
  final double lng;
  const Location(this.lat, this.lng);
}

void main(List<String> args) {
  final sanFrancisco1 = new Location(12.4124, 132.3343141);
  final sanFrancisco2 = new Location(12.4124, 132.3343141);
  final sanFrancisco3 = new Location(12.4124, 132.3343141);

  // print(sanFrancisco1 == sanFrancisco2); //false
  // print(sanFrancisco2 == sanFrancisco3); //false

  const sanFrancisco4 = const Location(12.4124, 132.3343140);
  const sanFrancisco5 = const Location(12.4124, 132.3343141);
  const sanFrancisco6 = const Location(12.4124, 132.3343141);
  const berlin = const Location(12.4124, 132.3343141);
  print(sanFrancisco4 == sanFrancisco5); //false
  print(sanFrancisco5 == sanFrancisco6); //true
  print(berlin == sanFrancisco6); //true
}
