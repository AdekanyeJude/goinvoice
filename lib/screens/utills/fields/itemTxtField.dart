import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';

Widget itemField(hinttext, controller, {enabled, onchanged}) {
  return SizedBox(
    height: 54,
    child: TextField(
      style: TextStyle(
          fontFamily: 'Outfit',
          color: colorCodes.black,
          fontSize: 14,
          fontWeight: FontWeight.w400),
      controller: controller,
      autocorrect: true,
      //autofocus: true,
      enableSuggestions: true,
      enabled: enabled,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorCodes.borderGrey),
        ),
        hintText: hinttext,
        hintStyle: TextStyle(
            fontFamily: 'Outfit',
            color: colorCodes.greyscale,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        contentPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorCodes.borderGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorCodes.borderGrey),
        ),
      ),
      onChanged: onchanged,
    ),
  );
}
