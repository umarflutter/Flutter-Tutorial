import 'package:flutter/material.dart';

import 'package:newflapps/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
    ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}

