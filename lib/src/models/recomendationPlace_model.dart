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
      location: 'Puerto Esc',
      name: 'Zicatela'),
  RecomendatonPlaceModel(
      image: 'assets/places/hiervelagua.jpeg',
      rating: '4.4',
      location: 'Oaxaca',
      name: 'Llerve el agua'),
  RecomendatonPlaceModel(
      image: 'assets/places/cascadaYosondua.jpeg',
      rating: '5.0',
      location: 'Tlaxiaco',
      name: 'Cerro del tambor'),
  RecomendatonPlaceModel(
      image: 'assets/places/cascadaYosondua.jpeg',
      rating: ' 4.4',
      location: 'Yosondua',
      name: 'Cascada'),
  RecomendatonPlaceModel(
      image: 'assets/places/lagunaencantada.jpeg',
      rating: '3.0',
      location: 'Tecomaxtlahuaca',
      name: 'Laguna encantada'),
];
