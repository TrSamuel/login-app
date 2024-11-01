import 'package:flutter/material.dart';

class ListTileFruit extends StatelessWidget {
  const ListTileFruit({
    super.key,
    required this.data,
    required this.size,
    required this.alt,
  });

  final Map<String, String> data;
  final double size;
  final bool alt;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(size * 0.015),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: alt==true?BorderRadius.circular(size):BorderRadius.circular(0),
                image: DecorationImage(
                  image: AssetImage(data['image']!),
                ),
              ),
              width: size * 0.15,
              height: size * 0.15,
            ),
          ),
          SizedBox(width: size*0.1,),
          Text(
            data['name']!,
            style: TextStyle(
              fontSize: size * 0.03,
              fontFamily: 'super-font',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
