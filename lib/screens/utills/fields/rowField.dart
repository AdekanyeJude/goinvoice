import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/utills/fields/amountField.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';

Widget rowField(title, amountController, {onSubmit, readOnly}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 160,
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(10.0),
        SizedBox(
            width: 120,
            child: SizedBox(
              width: 170,
              child: amountField(
                '0.0',
                amountController,
                onSubmit: onSubmit,
                readonly: readOnly,
              ),
            ))
      ],
    ),
  );
}
