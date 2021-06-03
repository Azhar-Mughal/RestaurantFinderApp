import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_finder_app/Components/RecommendedRestaurantList.dart';
import 'package:restaurant_finder_app/Components/RestaurantsList.dart';
import 'package:restaurant_finder_app/Components/TabWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isRestaurantSelected = true;

  bool isKFCSelected = false;

  bool isMcDonaldsSelected = false;

  bool isShanwariSelected = false;

  bool isKhanRestaurantSelected = false;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: ClipOval(
                child: Container(
                  width: _screenSize.height * 0.05,
                  height: _screenSize.height * 0.05,
                  child: Image.asset(
                    "assets/profile.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                "Hi, Azhar",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black38,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                  icon: Icon(
                    CupertinoIcons.bell,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {}),
            ),
            SizedBox(
              height: _screenSize.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _screenSize.width * 0.05,
                right: _screenSize.width * 0.4,
              ),
              child: Text(
                "Find the best rated place here !",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black38,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: _screenSize.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _screenSize.width * 0.05,
                right: _screenSize.width * 0.05,
              ),
              child: Container(
                height: _screenSize.height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 4,
                      offset: Offset(0, 5),
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                        hintText: "Search restaurant...",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _screenSize.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _screenSize.width * 0.05,
              ),
              child: Container(
                height: _screenSize.height * 0.06,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TabWidget(
                      mText: "Restaurant",
                      mIsEnable: isRestaurantSelected,
                      mOnTap: () {
                        setState(() {
                          isRestaurantSelected = true;
                          isKFCSelected = false;
                          isMcDonaldsSelected = false;
                          isShanwariSelected = false;
                          isKhanRestaurantSelected = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TabWidget(
                      mText: "KFC",
                      mIsEnable: isKFCSelected,
                      mOnTap: () {
                        setState(() {
                          isRestaurantSelected = false;
                          isKFCSelected = true;
                          isMcDonaldsSelected = false;
                          isShanwariSelected = false;
                          isKhanRestaurantSelected = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TabWidget(
                      mText: "McDonald's",
                      mIsEnable: isMcDonaldsSelected,
                      mOnTap: () {
                        setState(() {
                          isRestaurantSelected = false;
                          isKFCSelected = false;
                          isMcDonaldsSelected = true;
                          isShanwariSelected = false;
                          isKhanRestaurantSelected = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TabWidget(
                      mText: "Shanwari Restaurant",
                      mIsEnable: isShanwariSelected,
                      mOnTap: () {
                        setState(() {
                          isRestaurantSelected = false;
                          isKFCSelected = false;
                          isMcDonaldsSelected = false;
                          isShanwariSelected = true;
                          isKhanRestaurantSelected = false;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TabWidget(
                      mText: "Khan Restaurant",
                      mIsEnable: isKhanRestaurantSelected,
                      mOnTap: () {
                        setState(() {
                          isRestaurantSelected = false;
                          isKFCSelected = false;
                          isMcDonaldsSelected = false;
                          isShanwariSelected = false;
                          isKhanRestaurantSelected = true;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: _screenSize.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _screenSize.width * 0.05,
                right: _screenSize.width * 0.4,
              ),
              child: Text(
                "Favourite",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black38,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: _screenSize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _screenSize.width * 0.03,
                right: _screenSize.width * 0.04,
              ),
              child: Container(
                height: _screenSize.height * 0.34,
                child: RestaurantsList(),
              ),
            ),
            SizedBox(
              height: _screenSize.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _screenSize.width * 0.05,
                right: _screenSize.width * 0.4,
              ),
              child: Text(
                "Recommended",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black38,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: _screenSize.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: _screenSize.width * 0.03,
                right: _screenSize.width * 0.05,
              ),
              child: Container(
                height: _screenSize.height * 0.15,
                child: RecommendedRestaurantsList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
