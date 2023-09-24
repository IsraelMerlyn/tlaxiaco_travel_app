// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tlaxiaco_travel_app/src/presentation/widget/customIconButton.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tlaxiaco_travel_app/src/presentation/widget/location_card.dart';
import 'package:tlaxiaco_travel_app/src/presentation/widget/nearbyPlace.dart';
import 'package:tlaxiaco_travel_app/src/presentation/widget/place.dart';
import 'package:tlaxiaco_travel_app/src/presentation/widget/recomendationPlace.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Buenas tardes'),
            Text(
              'IsraelMerlyn',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Icons.search_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(icon: Icon(Icons.notifications_outlined)),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        children: [
          //ubicacion
          const LocationCard(),
          const SizedBox(
            height: 13,
          ),
          //categorias

          const TouristPlaces(),
          const SizedBox(
            height: 10,
          ),
          //recomendacion
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recomendacion',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('ver todos'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const RecomendationPlace(),

          const SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cerca de ti',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('ver todos'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const NearbyPlaces()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: 'bookmark'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.ticket_outline), label: 'ticket'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'ajuste'),
        ],
      ),
    );
  }
}
