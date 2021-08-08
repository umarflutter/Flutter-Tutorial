import 'package:flutter/material.dart';
import 'package:newflapps/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
class MallHeader extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "eShop".text.xl3.bold.color(context.theme.accentColor).make(),
        "EveryThing is Here".text.xl2.make(),
      ],
    );
  }
}