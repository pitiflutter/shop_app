import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarItemWidget extends StatelessWidget {
  const CarItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i = 1; i < 4 ; i++)
          Container(
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(

              children: [
                Radio(
                    value: " ",

                    groupValue: " ",
                    onChanged: (index) {}),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/$i.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Product Title ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " \$55 ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF4C53A5),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.delete,color: Colors.red,),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              boxShadow: [      BoxShadow(
                                  color: Colors.grey.withOpacity(.5),
                                  spreadRadius: 1,
                                  blurRadius: 10
                              ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(CupertinoIcons.minus,size: 18,),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child:     Text(
                              " 01 ",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF4C53A5),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.5),
                                    spreadRadius: 1,
                                    blurRadius: 10
                                ),

                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(CupertinoIcons.plus,size: 18,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}