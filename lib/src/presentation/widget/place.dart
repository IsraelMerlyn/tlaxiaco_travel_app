import 'package:flutter/material.dart';
import 'package:tlaxiaco_travel_app/src/models/places_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Chip(
            label: Text(
              touristPlaces[index].name,
            ),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlaces[index].image),
            ),
            backgroundColor: Colors.white,
            elevation: 0.4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          );
        },
        itemCount: touristPlaces.length,
        separatorBuilder: (BuildContext context, int index) =>
            Padding(padding: EdgeInsets.only(right: 10)),
      ),
    );
  }
}
