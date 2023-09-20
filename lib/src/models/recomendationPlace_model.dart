class RecomendatonPlaceModel {
  late final String name;
  late final String image;
  late final String rating;
  late final String location;

  RecomendatonPlaceModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.location,
  });
}

List<RecomendatonPlaceModel> recommendedPlaces = [
  RecomendatonPlaceModel(
      image: 'assets/places/adoquin.jpg',
      rating: '5.0',
      location: 'Puerto Escondido',
      name: 'Zicatela'),
  RecomendatonPlaceModel(
      image: 'assets/places/place1.jpg',
      rating: '4.4',
      location: 'Oaxaca',
      name: 'Llerve el agua'),
  RecomendatonPlaceModel(
      image: 'assets/places/place2.jpg',
      rating: '5.0',
      location: 'Tlaxiaco',
      name: 'Cerro del tambor'),
  RecomendatonPlaceModel(
      image: 'assets/places/place3.jpg',
      rating: ' 4.4',
      location: 'Yosondua',
      name: 'Cascada'),
  RecomendatonPlaceModel(
      image: 'assets/places/place4.jpg',
      rating: '3.0',
      location: 'Putla',
      name: 'Laguna encantada'),
];
