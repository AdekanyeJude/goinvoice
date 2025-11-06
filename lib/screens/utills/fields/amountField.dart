import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_invoice/colors/colors.dart';

var numberInputFormatters = [
  new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
];
Widget amountField(hinttext, controller,
    {onSubmit, maxLength, readonly, enabled}) {
  return SizedBox(
    height: 54,
    child: TextField(
      // readOnly: readonly,
      style: TextStyle(
          fontFamily: 'Outfit',
          color: colorCodes.black,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      controller: controller,
      autocorrect: true,
      //autofocus: true,
      inputFormatters: numberInputFormatters,
      enableSuggestions: true,
      enabled: enabled,
      maxLength: maxLength,
      onSubmitted: onSubmit,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        counterText: "",
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
        contentPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorCodes.borderGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colorCodes.borderGrey),
        ),
      ),
    ),
  );
}
