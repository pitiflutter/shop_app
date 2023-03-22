import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Shop",

              style: TextStyle(fontSize: 23,
                  color: Color(0xFF4C53A5),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text('3', style: TextStyle(color: Colors.white),),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cartPage");
                },
                child: Icon(Icons.shopping_bag_outlined)),
          )
        ],
      ),
    );
  }
}
