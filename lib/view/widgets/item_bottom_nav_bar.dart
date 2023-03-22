import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$120",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Color(0xFF4C53A5),),
            ),
            ElevatedButton.icon(
                style: ButtonStyle(
                  shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                       )
                  ),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.all( 15)),
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF4C53A5),
                  ),
                ),
                onPressed: () {},
                icon: Icon(CupertinoIcons.cart_badge_plus),
                label: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
