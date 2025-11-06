import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';

var numberInputFormatters = [
  new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
];
Widget accountNumTextfield(textControllerId, descr, hintText,
    {color, suffix, prefix}) {
  return Column(
    // mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        descr,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: colorCodes.eerieBlack),
      ),
      heightsizedBox(6.0),
      SizedBox(
        height: 52,
        child: TextField(
          // onChanged: onchanged,

          inputFormatters: numberInputFormatters,
          controller: textControllerId,
          // onEditingComplete: onEditingComplete,
          // autocorrect: true,
          enableSuggestions: true,
          style: TextStyle(
              fontFamily: 'Outfit',
              color: color ?? colorCodes.background,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: prefix,
            suffixIcon: suffix,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: colorCodes.borderGrey),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
                color: colorCodes.greyscale,
                fontSize: 16,
                fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: colorCodes.borderGrey),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: colorCodes.borderGrey),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
