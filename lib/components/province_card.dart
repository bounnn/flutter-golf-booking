import 'package:flutter/material.dart';

class ProvinceCard extends StatelessWidget {
  const ProvinceCard(
      {super.key, required this.imagePath, required this.provinceName});

  final String imagePath;
  final String provinceName;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(28),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black.withOpacity(0.2),
          //           spreadRadius: 0,
          //           blurRadius: 8,
          //           offset: const Offset(0, 8),
          //         ),
          //       ]),
          // ),
          ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Stack(
              children: <Widget>[
                _buildImageBackground(context),
                _buildGradient(),
                _buildTitleAndSubtitle(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildImageBackground(BuildContext context) {
    return Positioned.fill(
        child: Image.asset(
      imagePath,
      fit: BoxFit.fill,
    ));
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.1),
              Colors.black.withOpacity(0.8)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            provinceName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
