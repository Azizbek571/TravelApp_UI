import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/hotel_tile.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [_background(context), _locationsList(context)],
    );
  }

  Widget _background(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assests/images/image.jpg")),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.1),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Thailand Islands",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              " 15 June - 18 June",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }

  Widget _locationsList(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * .58,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: ListView(
          children: [
            HotelTile(
                name: "Hilton Thai",
                image: "assests/images/image.jpg",
                    // "https://images.pexels.com/photos/931018/pexels-photo-931018.jpg",
                price: 195,
                rating: 4.3),
            HotelTile(
                name: "Hilton Thai",
                image:"assests/images/image.jpg",
                    // "https://images.pexels.com/photos/931018/pexels-photo-931018.jpg",
                price: 195,
                rating: 4.3),
            HotelTile(
                name: "Hilton Thai",
                image: "assests/images/image.jpg",
                    // "https://images.pexels.com/photos/931018/pexels-photo-931018.jpg",
                price: 195,
                rating: 4.3),
            HotelTile(
                name: "Hilton Thai",
                image: "assests/images/image.jpg", 
                    // "https://images.pexels.com/photos/931018/pexels-photo-931018.jpg",
                price: 195,
                rating: 4.3),
          ],
        ),
      ),
    );
  }
}
