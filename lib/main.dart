import 'package:flutter/material.dart';
import 'package:golf_booking/components/province_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      ProvinceCard(
                        imagePath: 'assets/Vientiane.png',
                        provinceName: 'Vientiane',
                      ),
                      SizedBox(width: 10),
                      ProvinceCard(
                        imagePath: 'assets/Champasak.jpg',
                        provinceName: 'Champasak',
                      ),
                      SizedBox(width: 10),
                      ProvinceCard(
                        imagePath: 'assets/Sayaboury.jpg',
                        provinceName: 'Sayaboury',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SearchAnchor(
                  builder: (context, controller) {
                    return SearchBar(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(255, 255, 255, 1.0)),
                      controller: controller,
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16)),
                      trailing: <Widget>[
                        IconButton(
                          onPressed: () {
                            controller.clear();
                          },
                          icon: const Icon(Icons.search),
                        ),
                      ],
                    );
                  },
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List<ListTile>.generate(5, (index) {
                      final String text = 'item ${index + 1}';
                      return ListTile(
                        title: Text(text),
                        onTap: () {
                          controller.text = text;
                        },
                      );
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
