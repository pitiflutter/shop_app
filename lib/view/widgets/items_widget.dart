import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: [
        for(int i= 1 ; i<8;i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context,
                      "ItemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("Images/$i.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Write description here ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("\$55 "), Icon(Icons.shopping_bag_outlined,color:Color(0xFF4C53A5) ,)],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
