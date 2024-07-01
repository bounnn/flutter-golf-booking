import 'package:flutter/material.dart';
import 'package:golf_booking/pages/form_reserve.dart';

class GolfCourseDetailPage extends StatelessWidget {
  const GolfCourseDetailPage(
      {super.key,
      required this.courseName,
      required this.imagePath,
      required this.distance,
      required this.time,
      required this.description});

  final String courseName;
  final String imagePath;
  final String distance;
  final String time;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  imagePath, // Replace with your image URL
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: ElevatedButton(
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
                        size: 36, color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.directions_walk,
                            size: 16, color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          distance,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(2, 48, 71, 1)),
                  ),
                  Text(
                    courseName,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(2, 48, 71, 1)),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                        color: Color.fromRGBO(134, 156, 167, 1)),
                  ),
                  const Text('Contact: +85620XXXXXXXX',
                      style:
                          TextStyle(color: Color.fromRGBO(134, 156, 167, 1))),
                  // const Text('www.riverlake.com',
                  //     style:
                  //         TextStyle(color: Color.fromRGBO(134, 156, 167, 1))),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoCard('18', 'Holes'),
                      _buildInfoCard('70', 'Par'),
                      _buildInfoCard('4500', 'Length'),
                      _buildInfoCard('02', 'Slope'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(2, 48, 71, 1)),
                  ),
                  Text(
                    """The $courseName offers an 18-hole championship golf course that seamlessly integrates with the lush, tropical landscape, weaving through palm tree groves and rolling hills while featuring strategic bunkers, water hazards, and undulating greens that provide an enjoyable challenge for all skill levels - several holes even border the meandering Mekong River and adjacent Lake Nong Ping, allowing golfers to take in the breathtaking views of the river and distant mountains, all while the club provides a full-service clubhouse with dining, a bar, and pro shop, as well as rental clubs, carts, and caddies, making this the perfect golf destination just a short drive from the UNESCO town of Luang Prabang that promises an unforgettable experience amidst the natural beauty of Laos.""",
                    style: const TextStyle(
                        color: Color.fromRGBO(134, 156, 167, 1)),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Facilities',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(2, 48, 71, 1)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: [
                        _buildFacilityIcon(Icons.restaurant, 'Restaurant'),
                        _buildFacilityIcon(Icons.local_parking, 'Cart / Caddy'),
                        _buildFacilityIcon(Icons.lock, 'Locker room'),
                        _buildFacilityIcon(Icons.shopping_cart, 'Shop'),
                        _buildFacilityIcon(Icons.sports_golf, 'Club'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Policies',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(2, 48, 71, 1)),
                  ),
                  Text(
                    "The $courseName is open to the public daily from dawn to dusk. All players must check in at the pro shop and adhere to the dress code, which requires appropriate golf attire and non-metal spikes. Tee times may be reserved up to 7 days in advance. Pace of play must be maintained, with ranger staff authorized to ask slow groups to pick up the pace. Players are responsible for course upkeep, including repairing ball marks, replacing divots, and raking bunkers. Golf carts are limited to two riders and must remain on the paths. Outside food, drinks, and alcohol are prohibited, as the clubhouse offers dining and bar services. We appreciate your cooperation in following these policies to ensure an enjoyable experience for all golfers."
                    ""
                    'Tortor sollicitudin.',
                    style: const TextStyle(
                        color: Color.fromRGBO(134, 156, 167, 1)),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _buildPriceCard('Caddy', '250,000 KIP'),
                      _buildPriceCard('Cart', '380,000 KIP'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 53,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BookingForm()));
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(2, 48, 71, 1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.0)))),
                      child: const Text(
                        'ຈອງ',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'NotoSansLaoLooped',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _buildInfoCard(String value, String label) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: const BorderSide(
              color: Color.fromRGBO(33, 158, 188, 1), width: 1.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              value,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: const TextStyle(color: Color.fromRGBO(134, 156, 167, 1)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFacilityIcon(IconData icon, String label) {
    return SizedBox(
      width: 128,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 18,
              color: const Color.fromRGBO(134, 156, 167, 1),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              label,
              style: const TextStyle(color: Color.fromRGBO(134, 156, 167, 1)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceCard(String item, String price) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: const BorderSide(
              color: Color.fromRGBO(33, 158, 188, 1), width: 1.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              item,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              price,
              style: const TextStyle(color: Color.fromRGBO(134, 156, 167, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
