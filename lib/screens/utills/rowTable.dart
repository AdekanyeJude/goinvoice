import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';

Widget rowTable(currentIndex, item, quantity, price, amountPaid) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 15,
          child: Text(
            currentIndex,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(6.0),
        Expanded(
          child: Text(
            item,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        SizedBox(
          width: 40,
          child: Text(
            quantity,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(6.0),
        SizedBox(
          width: 60,
          child: Text(
            price,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(6.0),
        SizedBox(
          width: 100,
          child: Text(
            amountPaid,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        )
      ],
    ),
  );
}

Widget rowTable2(currentIndex, item, quantity, price, amountPaid, {color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 15,
          child: Text(
            currentIndex,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(6.0),
        Expanded(
          child: Text(
            item,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        SizedBox(
          width: 40,
          child: Text(
            quantity,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(6.0),
        SizedBox(
          width: 150,
          child: Text(
            price,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(6.0),
        SizedBox(
          width: 100,
          child: Text(
            amountPaid,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color ?? colorCodes.eerieBlack,
            ),
          ),
        )
      ],
    ),
  );
}
