import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/utills/fields/amountField.dart';
import 'package:go_invoice/screens/utills/fields/itemTxtField.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';

Widget rowInputTable(currentIndex, itemController, quantityController,
    priceController, amountPaidController) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 15,
          child: Text(
            "$currentIndex",
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        widthsizedBox(6.0),
        //  Container(height: 30,decoration: BoxDecoration(color: colorCodes.eerieBlack),)
        // widthsizedBox(6.0),
        Expanded(child: itemField('Enter item', itemController)),
        widthsizedBox(6.0),
        SizedBox(
            width: 40,
            child: SizedBox(
                width: 30,
                child: amountField('', quantityController, maxLength: 3))),
        widthsizedBox(6.0),
        SizedBox(
            width: 60,
            child: SizedBox(
              child: amountField(
                '0.0', priceController,
                // enabled: quantityController.text == '' ? false : true,
              ),
            )),
        widthsizedBox(6.0),
        SizedBox(
            width: 100,
            child: SizedBox(
              width: 80,
              child: amountField(
                '0.0',
                amountPaidController,
              ),
            ))
      ],
    ),
  );
}
