import 'package:flutter/material.dart';

Text outfitFonttxt(text, size, weight, color) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontFamily: 'Outfit',
        fontSize: size,
        fontWeight: weight,
        color: color),
  );
}
