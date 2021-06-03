import 'package:flutter/material.dart';
import 'package:restaurant_finder_app/AppUtils.dart';
import 'package:restaurant_finder_app/RestaurantDetailScreen.dart';

class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: AppUtils.restaurantImagesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            height: _screenSize.height * 0.34,
            width: _screenSize.width * 0.43,
            child: Material(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return RestaurantDetailScreen(
                          imagePath: AppUtils.restaurantImagesList[index],
                          mRestaurantApp: AppUtils.restaurantNames[index],
                          foodImagePath: index.isEven ? "assets/bbq.jpg" : "assets/bihari-and-afghani-kebab.jpg",
                        );
                      },
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: _screenSize.height * 0.24,
                        width: _screenSize.width * 0.43,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            AppUtils.restaurantImagesList[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.01,
                      ),
                      Text(
                        AppUtils.restaurantNames[index],
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.01,
                      ),
                      Text(
                        "Show Directions",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
