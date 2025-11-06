import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/utills/texts/dmsanstxt.dart';

Widget authbtn(btntxt, btnFunc, {backgroundcolor, textWidth, enabled = true}) {
  var elevatedButton = ElevatedButton(
      onPressed: enabled ? btnFunc : null,
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 7,
        ),
        backgroundColor: backgroundcolor ?? colorCodes.onyx,
        // disabledBackgroundColor: const Color(0xff7BF165).withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: dmSanstxt(btntxt, 16.0, FontWeight.w400, colorCodes.neonWhite));

  if (textWidth != null && textWidth) {
    return Align(
      alignment: Alignment.center,
      child: IntrinsicWidth(
        child: elevatedButton,
      ),
    );
  } else {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 52,
        width: 335,
        child: elevatedButton,
      ),
    );
  }
}
