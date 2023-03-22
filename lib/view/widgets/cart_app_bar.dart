
import 'package:flutter/material.dart';
class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_outlined,
              size: 30,
              color: Color(0xFF4C53A5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Cart",

              style: TextStyle(fontSize: 23,
                  color: Color(0xFF4C53A5),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cartPage");
                },
                child: Icon(Icons.more_vert)),

        ],
      ),
    );
  }
}
