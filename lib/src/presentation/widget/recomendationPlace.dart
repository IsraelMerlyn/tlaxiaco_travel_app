import 'package:flutter/material.dart';
import 'package:tlaxiaco_travel_app/src/models/recomendationPlace_model.dart';

class RecomendationPlace extends StatelessWidget {
  const RecomendationPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 220,
              child: Card(
                elevation: 0.4,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recommendedPlaces[index].image,
                            height: 150,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              recommendedPlaces[index].name,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.yellow.shade700,
                            ),
                            Text(
                              recommendedPlaces[index].rating,
                              style: const TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: Theme.of(context).primaryColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              recommendedPlaces[index].location,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 10),
              ),
          itemCount: recommendedPlaces.length),
    );
  }
}
