import 'package:flutter/material.dart';
import 'package:golf_booking/pages/result_reserve.dart';

class BookingDetailScreen extends StatelessWidget {
  const BookingDetailScreen({super.key});

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
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Your booking detail",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(2, 48, 71, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Card(
                        color: Colors.white,
                        elevation: 5,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mr Bounheuang SENKHAM",
                                    style: TextStyle(
                                      color: Color.fromRGBO(2, 48, 71, 1),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "example@gmail.com",
                                    style: TextStyle(
                                      color: Color.fromRGBO(2, 48, 71, 1),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "+85620XXXXXXXX",
                                    style: TextStyle(
                                      color: Color.fromRGBO(2, 48, 71, 1),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
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
                                  Row(
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
                      const SizedBox(height: 16),
                      const Text(
                        "Cancellation Policy",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(2, 48, 71, 1)),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Tee time reservations may be cancelled or rescheduled up to 24 hours in advance without penalty. Any cancellations or changes made less than 24 hours prior to the reserved tee time will be subject to a 50% charge of the applicable green fees. No-shows or same-day cancellations will be charged the full green fee rate. We kindly ask that you notify the pro shop as soon as possible if you need to cancel or modify your reservation, to allow us to offer the tee time to other interested golfers. Failure to provide sufficient advance notice may result in forfeiture of your booking and applicable fees. We appreciate your understanding and cooperation in adhering to this policy.",
                        style: TextStyle(
                            fontSize: 16, color: Color.fromRGBO(2, 48, 71, 1)),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 53,
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BookingResult()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromRGBO(2, 48, 71, 1)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.0)))),
                          child: const Text('ຍືນຍັນການຈອງ',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'NotoSansLaoLooped',
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
