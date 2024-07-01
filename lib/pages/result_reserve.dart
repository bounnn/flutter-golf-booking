import 'package:flutter/material.dart';
import 'package:golf_booking/main.dart';

class BookingResult extends StatelessWidget {
  const BookingResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromRGBO(2, 48, 71, 1), // Tonal color
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(
                        8), // Adjust padding for button size
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back,
                      size: 26, color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image.asset(
                    "assets/Success.gif", // Replace with your image URL
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                const Center(
                  child: Text(
                    "Your booking form was submitted!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(2, 48, 71, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                        side: const BorderSide(
                            color: Color.fromRGBO(33, 158, 188, 1))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color.fromRGBO(2, 48, 71, 1),
                            child: const Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Riverlake",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Thu 38 Aug 2076 at 08: 50 AM\nVIP",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Your booking ID:",
                                style: TextStyle(
                                  color: Color.fromRGBO(134, 156, 167, 1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 46,
                                color: const Color.fromRGBO(2, 48, 71, 1),
                                child: const Center(
                                  child: Text(
                                    "07874575",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const Text(
                                "Mr Bounheuang SENKHAM",
                                style: TextStyle(
                                  color: Color.fromRGBO(2, 48, 71, 1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                "example@gmail.com",
                                style: TextStyle(
                                  color: Color.fromRGBO(2, 48, 71, 1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                "+85620XXXXXXXX",
                                style: TextStyle(
                                  color: Color.fromRGBO(2, 48, 71, 1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Row(
                                children: [
                                  Text("Golfers: "),
                                  Text(
                                    "04",
                                    style: TextStyle(
                                      color: Color.fromRGBO(2, 48, 71, 1),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text("Hole: "),
                                  Text(
                                    "08",
                                    style: TextStyle(
                                      color: Color.fromRGBO(2, 48, 71, 1),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: SizedBox(
                    height: 53,
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(2, 48, 71, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.0)))),
                      child: const Text('ໜ້າຫຼັກ',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'NotoSansLaoLooped',
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
