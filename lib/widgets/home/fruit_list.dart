import 'package:flutter/material.dart';
import 'package:loginapp/data/fruitslist.dart';
import 'package:loginapp/widgets/home/list_tile_fruit.dart';

class FruitList extends StatelessWidget {
  const FruitList({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: fruitList.length,
      itemBuilder: (context, index) {
        final alt = index % 2 == 0 ? true : false;
        final data = fruitList[index];
        return ListTileFruit(
          alt: alt,
          data: data,
          size: size,
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
