import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "total",
                  style: TextStyle(
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  "\$250",
                  style: TextStyle(
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
            Container(
            alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF4C53A5),
                borderRadius: BorderRadius.circular(20),

              ),child: Text("Check Out",style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16) ,),
            )
          ],
        ),
      ),
    );
  }
}
