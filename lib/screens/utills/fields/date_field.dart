import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';

Widget dateofbirthTxtField(hintText, controller, showdate) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        hintText,
        style: TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: colorCodes.background),
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        height: 50,
        child: TextField(
          style: TextStyle(
              fontFamily: 'Outfit',
              color: colorCodes.onyx,
              fontSize: 20,
              fontWeight: FontWeight.w400),
          controller: controller,
          autocorrect: true,
          //autofocus: true,
          enableSuggestions: true,
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Image.asset(
                'assets/images/appointment.png',
                height: 20.0,
                width: 20.0,
                color: colorCodes.ashGrey,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: colorCodes.borderGrey),
            ),
            hintText: '00/00/0000',
            hintStyle: TextStyle(
                fontFamily: 'Outfit',
                color: colorCodes.greyscale,
                fontSize: 16,
                fontWeight: FontWeight.w400),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: colorCodes.borderGrey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: colorCodes.borderGrey),
            ),
          ),
          onTap: showdate,
        ),
      ),
    ],
  );
}
