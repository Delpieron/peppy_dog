import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      // fit: BoxFit.cover,
      gaplessPlayback: true,
      'assets/products/pd_011.webp',
      // height: MediaQuery.sizeOf(context).height,
      // width: MediaQuery.sizeOf(context).width,
    );
  }
}
