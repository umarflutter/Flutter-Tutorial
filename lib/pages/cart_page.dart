import 'package:flutter/material.dart';
import 'package:newflapps/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
         backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.accentColor).make(),
      
      ),
      body: colum,
    );
  }
}