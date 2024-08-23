import 'package:flutter/material.dart';

Widget socialButton(String assetName) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(assetName),
      ),
    );
  }

