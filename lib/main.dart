import 'package:flutter/material.dart';
import 'package:shop_app/view/pages/cart_screen.dart';
import 'package:shop_app/view/pages/home_screen.dart';
import 'package:shop_app/view/pages/item_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context)=> const HomeScreen(),
        "cartPage" :(context)=> const CartScreen(),
        "ItemPage" : (context) => ItemScreen(),
      },
    );
  }
}

