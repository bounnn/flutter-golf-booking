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
            child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(33, 158, 188, 1),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.history,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Check my booking status",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 5),
                      child: const ProvinceCard(
                        imagePath: "assets/Vientiane.png",
                        provinceName: "Vientiane",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 5),
                      child: const ProvinceCard(
                        imagePath: "assets/Champasak.jpg",
                        provinceName: "Champasak",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 5),
                      child: const ProvinceCard(
                        imagePath: "assets/Sayaboury.jpg",
                        provinceName: "Sayaboury",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SizedBox(
                height: 65,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Ink(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: IconButton.filledTonal(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(33, 158, 188, 1),
                          ),
                        ),
                      ),
                    ),
                    hintText: 'Search golf course',
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    fillColor: Colors.white,
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(33, 158, 188, 1), width: 2),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(color: Colors.black12, width: 1),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SizedBox(
                height: 18,
                child: Text(
                  "Recommendation",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Container(
                height: 180,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Container(
                height: 180,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Container(
                height: 180,
                color: Colors.amber,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
