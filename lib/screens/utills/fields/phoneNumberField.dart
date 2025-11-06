import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:hexcolor/hexcolor.dart';

var numberInputFormatters = [
  new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
];
Widget phoneTextfield(desc, textControllerId, labelText, hintText, dialCode,
    maxLength, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        desc,
        style: TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: colorCodes.background),
      ),
      const SizedBox(
        height: 6,
      ),
      SizedBox(
        height: 52,
        child: TextField(
          controller: textControllerId,
          // autocorrect: true,
          // focusNode: fNode,
          // autofocus: true,
          maxLength: maxLength,
          inputFormatters: numberInputFormatters,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: "",
            prefixIcon: Container(
              width: 34,
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
              // margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
              child: Row(
                children: [
                  Text(
                    "+$dialCode",
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text("|",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ],
              ),
            ),

            // contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
            // isDense: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: HexColor("#D6D6D6").withOpacity(0.2)),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            hintText: hintText,

            hintStyle: TextStyle(
                color: colorCodes.black.withOpacity(0.5),
                fontSize: 14,
                fontWeight: FontWeight.w300),
            // prefixIcon: Icon(Icons.email, color: Colors.grey[400]),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: HexColor("#D6D6D6")),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: HexColor("#D6D6D6")),
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
