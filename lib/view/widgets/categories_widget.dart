import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            for(int i =1; i < 8 ; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/$i.png",
                    width: 40,
                  ),
                  Text(
                    "sandal",
                    style: TextStyle(
                      color: Color(0xFF4C53A5),
                      fontSize: 20
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
