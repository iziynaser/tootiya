import 'package:fcbapp/models/location_fact.dart';

class Location {
  int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;
  static List<Location> l = [
    Location(1, "java", "lib/asset/images/java.jpg", [
      LocationFact("java development kit", "jdk"),
      LocationFact("java runtime environment", "jre")
    ]),
    Location(2, "python", "lib/asset/images/python.jpg",
        [LocationFact("python is mlearining", "pythons")]),
    Location(
        3, "c++", "lib/asset/images/cplus.jpg", [LocationFact("c++", "c++")])
  ];

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchByID(int locationId) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) return locations[i];
    }
    return null;
  }

  static Location fetchFirst() {
    return l.first;
  }

  static List<Location> fetchAll() {
    return l;
  }
}
