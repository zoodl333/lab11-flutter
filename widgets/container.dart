import 'package:flutter/material.dart';
import 'package:lab11/providers/radiusDataProvider.dart';
import 'package:provider/provider.dart';

class BlueContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RadiusDataProvider>(context);
    return Padding(padding: EdgeInsets.all(50.0), child: Container(
      width: 150,
      height: 150,

      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(provider.topLeft),
            topRight: Radius.circular(provider.topRight),
            bottomLeft: Radius.circular(provider.bottomLeft),
            bottomRight: Radius.circular(provider.bottomRight),
          )
      ),
    ),);
  }
}