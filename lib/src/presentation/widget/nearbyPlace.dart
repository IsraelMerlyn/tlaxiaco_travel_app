// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tlaxiaco_travel_app/src/models/nearbyPlace_model.dart';
import 'package:tlaxiaco_travel_app/src/models/recomendationPlace_model.dart';
import 'package:tlaxiaco_travel_app/src/presentation/widget/distance.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlcesModel.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          recommendedPlaces[index].image,
                          height: double.maxFinite,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      // ignore: prefer_const_constructors
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recommendedPlaces[index].name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(recommendedPlaces[index].location),
                            const SizedBox(
                              height: 10,
                            ),
                            //Distancia de ubicacion
                            DistanceWidget(
                              location: recommendedPlaces[index].location,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Ionicons.star,
                                  color: Colors.yellow.shade700,
                                  size: 14,
                                ),
                                const Text(
                                  '5.5',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Spacer(),
                                // RichText(
                                //   text: TextSpan(
                                //       style: TextStyle(
                                //         fontSize: 20,
                                //         color: Theme.of(context).primaryColor,
                                //       ),
                                //       text: '\$22',
                                //       children: [
                                //         TextSpan(
                                //             style: TextStyle(
                                //                 fontSize: 12,
                                //                 color: Colors.black54),
                                //             text: '/ persona')
                                //       ]),
                                // ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
