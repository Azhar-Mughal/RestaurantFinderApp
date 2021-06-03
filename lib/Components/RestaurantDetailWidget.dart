import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantDetailWidget extends StatelessWidget {
  final String mRestaurantApp, imagePath;

  const RestaurantDetailWidget({this.mRestaurantApp, this.imagePath});

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.55,
      width: _screenSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(40, 40),
          topRight: Radius.elliptical(40, 40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: _screenSize.width * 0.05,
              right: _screenSize.width * 0.4,
              top: _screenSize.height * 0.05,
            ),
            child: Text(
              this.mRestaurantApp,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                color: Colors.blueGrey,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: _screenSize.height * 0.02,
          ),
          Container(
            height: _screenSize.height * 0.08,
            width: _screenSize.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: _screenSize.width * 0.45,
                  height: _screenSize.height * 0.08,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: _screenSize.width * 0.025,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 18,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "4.7",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Text(
                            "768,128 Reviews",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: Colors.grey,
                  endIndent: _screenSize.height * 0.012,
                  indent: _screenSize.height * 0.012,
                ),
                Container(
                  width: _screenSize.width * 0.45,
                  height: _screenSize.height * 0.08,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: _screenSize.width * 0.05,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.blueGrey,
                              size: 20,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "500 M away",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Icon(
                                CupertinoIcons.clock,
                                color: Colors.blueGrey,
                                size: 15,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "5 Minute by walk",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: _screenSize.width * 0.05,
              right: _screenSize.width * 0.05,
            ),
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: _screenSize.width * 0.05,
              right: _screenSize.width * 0.05,
              top: _screenSize.height * 0.02,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              height: _screenSize.height * 0.2,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: _screenSize.width * 0.42,
                      height: _screenSize.height * 0.2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          this.imagePath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: _screenSize.width * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bihari and Afghani Kabab",
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Bihari Kabab is originally from Bihar, India and now is also a popular BBQ item in Pakistan. ",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$ 22",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 17),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blueGrey),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12, top: 8, bottom: 8),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
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
          ),
          Padding(
            padding: EdgeInsets.only(
              left: _screenSize.width * 0.05,
              right: _screenSize.width * 0.05,
              top: _screenSize.height * 0.03,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Container(
                    height: _screenSize.height * 0.08,
                    width: _screenSize.width * 0.65,
                    child: Center(
                      child: Text(
                        "Order Food",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    CupertinoIcons.chat_bubble,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
