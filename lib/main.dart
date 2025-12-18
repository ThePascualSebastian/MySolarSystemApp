import 'package:flutter/material.dart';
import 'package:solo_app1/planet.dart';
import 'package:solo_app1/planetinfo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1 Starter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Solar System App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 58, 72),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity, // Allows the background image to take up the entire space
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/solarsystem.jpg',
            ), // image from assets folder
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Click the button below to learn more about our solar system!',
              style: TextStyle(fontSize: 16, color: Colors.white,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('List of Planets'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 58, 72),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 58, 72),
        title: const Text(
          "List of Planets",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder( // Allows me to display the planets in a list format
        itemCount: planets.length,
        itemBuilder: (context, index) {
          final planet = planets[index]; // based on the index, it will display the planets
          return Card(
            color: Colors.grey[900],
            child: ListTile(
              leading: CircleAvatar( // allows me to display a thumbnail picture next to the name of the planet
                backgroundImage: NetworkImage(
                  planet.imageUrl,
                ), // gets the planets image URL
              ),
              title: Text(
                planet.name,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanetDetailScreen(planet: planet),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class PlanetDetailScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name, style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 3, 58, 72),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0), // sets the space from the app bar
        child: Column(
          children: [
            Image.network(planet.imageUrl, height: 250),
            const SizedBox(height: 20), // sets space from the image and text
            Text(
              planet.description,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
