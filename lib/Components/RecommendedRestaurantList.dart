import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedRestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            height: _screenSize.height * 0.13,
            width: _screenSize.width * 0.84,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: _screenSize.height * 0.12,
                    width: _screenSize.width * 0.26,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        index == 0
                            ? "assets/ramada.jpg"
                            : "assets/marriott.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: _screenSize.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          index == 0 ? "Ramada Islamabad" : "Serena Hotel Isb",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.008,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          index == 0
                              ? "Shakar Parian, Islamabad,"
                              : "G-5/1 G-5, Islamabad",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _screenSize.height * 0.013,
                      ),
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
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueGrey,
                    size: 20,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
