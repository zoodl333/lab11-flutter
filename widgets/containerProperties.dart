import 'package:flutter/material.dart';
import 'package:lab11/providers/radiusDataProvider.dart';
import 'package:provider/provider.dart';

class ContainerProperties extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RadiusDataProvider>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Text("TL: "),
                    Text(provider.topLeft.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Slider(value: provider.topLeft, min: 0, max: 100, onChanged: (double? v) {
                  provider.topLeftRadius = v ?? 0.0;
                }),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Text("TR: "),
                    Text(provider.topRight.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Slider(value: provider.topRight, min: 0, max: 100, onChanged: (double? v) {
                  provider.topRightRadius = v ?? 0.0;
                }),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Text("BL: "),
                    Text(provider.bottomLeft.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Slider(value: provider.bottomLeft, min: 0, max: 100, onChanged: (double? v) {
                  provider.bottomLeftRadius = v ?? 0.0;
                }),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Text("BR: "),
                    Text(provider.bottomRight.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                Slider(value: provider.bottomRight, min: 0, max: 100, onChanged: (double? v) {
                  provider.bottomRightRadius = v ?? 0.0;
                }),
              ],
            )
          ],
        ),
      ],
    );
  }
}