import 'package:flutter/material.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({super.key});

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
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Check my booking status",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(2, 48, 71, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
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
                            hintText: 'Enter your booking id',
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 15),
                            fillColor: Colors.white,
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(33, 158, 188, 1),
                                  width: 2),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 1),
                            ),
                          ),
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
                                  const SizedBox(
                                    height: 4,
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
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              color:
                                                  Color.fromRGBO(2, 48, 71, 1),
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
                                              color:
                                                  Color.fromRGBO(2, 48, 71, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.schedule_outlined,
                                        size: 36,
                                        color: Color.fromRGBO(251, 133, 0, 1),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Pending',
                                        style: TextStyle(
                                          color: Color.fromRGBO(251, 133, 0, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
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
                                  const SizedBox(
                                    height: 4,
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
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              color:
                                                  Color.fromRGBO(2, 48, 71, 1),
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
                                              color:
                                                  Color.fromRGBO(2, 48, 71, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        size: 36,
                                        color: Color.fromRGBO(78, 205, 196, 1),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Confirmed',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(78, 205, 196, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
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
                                  const SizedBox(
                                    height: 4,
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
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              color:
                                                  Color.fromRGBO(2, 48, 71, 1),
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
                                              color:
                                                  Color.fromRGBO(2, 48, 71, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.highlight_off_outlined,
                                        size: 36,
                                        color: Color.fromRGBO(255, 107, 107, 1),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Rejected',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 107, 107, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
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
