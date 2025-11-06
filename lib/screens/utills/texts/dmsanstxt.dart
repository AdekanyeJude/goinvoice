import 'package:flutter/material.dart';

Text dmSanstxt(text, size, weight, color) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontFamily: 'DM Sans',
        fontSize: size,
        fontWeight: weight,
        color: color),
  );
}
