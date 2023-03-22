import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/view/widgets/item_bottom_nav_bar.dart';

import '../widgets/item_app_bar.dart';

class ItemScreen extends StatelessWidget {
  ItemScreen({Key? key}) : super(key: key);
  List<Color> _colors = [Colors.green, Colors.red, Colors.black, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ItemAppBar(),
          Container(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "assets/images/1.png",
                height: 300,
              ),
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 40,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.only(left: 10, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Product Title ",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 18,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.favorite,
                          color: Color(0xFF4C53A5),
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    spreadRadius: 1,
                                    blurRadius: 10),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(                                  color: Color(0xFF4C53A5),

                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              " 01 ",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF4C53A5),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    spreadRadius: 1,
                                    blurRadius: 10),
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 18,                                  color: Color(0xFF4C53A5),

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Here you can write more detail about your product,Here you can write more detail about your product,Here you can write more detail about your product ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Size :",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < 4; i++)
                            Container(
                                width: 30,
                                height: 30,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        spreadRadius: 1,
                                        blurRadius: 10),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    "$i",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(
                                        0xFF4C53A5,
                                      ),
                                    ),
                                  ),
                                )),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Color :",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          for (int i = 0; i < 4; i++)
                            Container(
                              width: 30,
                              height: 30,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(.5),
                                      spreadRadius: 1,
                                      blurRadius: 10),
                                ],
                                color: _colors[i],
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
