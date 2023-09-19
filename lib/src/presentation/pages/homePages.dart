import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                'assets/illustration.png',
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Expore your journe \n only with us',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'All your vacations destinations are here,\n enjoy yout holiday',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    shape: const StadiumBorder(),
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
