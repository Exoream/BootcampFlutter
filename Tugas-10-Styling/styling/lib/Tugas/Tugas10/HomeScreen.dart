import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: const Icon(Icons.notifications), onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.extension), onPressed: () {})
                ],
              ),
              const SizedBox(height: 37),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Welcome, \n",
                      style: TextStyle(color: Colors.blue[300]),
                    ),
                    TextSpan(
                      text: "Hilmy, \n",
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ],
                ),
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 18,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Search"),
              ),
              const SizedBox(height: 10),
              const Text(
                "Recomended Place",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(
                height: 300,
                child: GridView.count(
                  padding: const EdgeInsets.all(5),
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    for (var country in countries)
                      Image.asset("assets/img/$country.png")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final countries = ["Tokyo", "Berlin", "Roma", "Monas"];
