import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/cart_app_bar.dart';
import '../widgets/cart_bottom_navbar.dart';
import '../widgets/cart_item_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),

              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CarItemWidget(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(CupertinoIcons.plus,size: 18,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Add Coupon Code",
                        style: TextStyle(fontSize: 16,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}


