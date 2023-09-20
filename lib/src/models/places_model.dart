class TouristPlaceModel {
  late final String name;
  late final String image;

  TouristPlaceModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlaceModel> touristPlaces = [
  TouristPlaceModel(name: 'playa', image: 'assets/icons/beach.png'),
  TouristPlaceModel(name: 'ciudad', image: 'assets/icons/city.png'),
  TouristPlaceModel(name: 'paisaje', image: 'assets/icons/desert.png'),
  TouristPlaceModel(name: 'Boqueron', image: 'assets/icons/mountain.png'),
  TouristPlaceModel(name: 'paisaje', image: 'assets/icons/forest.png'),
];
