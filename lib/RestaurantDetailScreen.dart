import 'package:flutter/material.dart';
import 'package:restaurant_finder_app/Components/RestaurantDetailWidget.dart';

class RestaurantDetailScreen extends StatefulWidget {
  final String imagePath, mRestaurantApp,foodImagePath;


  const RestaurantDetailScreen({this.imagePath, this.mRestaurantApp,this.foodImagePath});

  @override
  _RestaurantDetailScreenState createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: _screenSize.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: _screenSize.height * 0.5,
              width: _screenSize.width,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: _screenSize.height * 0.45,
              child: RestaurantDetailWidget(
                mRestaurantApp: widget.mRestaurantApp,
                imagePath: widget.foodImagePath,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
