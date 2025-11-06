import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';

Column nametextField(desc, hinttext, controller,
    {errorText, enabled = true, key}) {
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
          maxLines: 1,
          style: TextStyle(
              fontFamily: 'Outfit',
              color: colorCodes.black,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          controller: controller,
          autocorrect: true,
          //autofocus: true,
          enableSuggestions: true,
          enabled: enabled,
          keyboardType: key ?? TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: colorCodes.borderGrey),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
                fontFamily: 'Outfit',
                color: colorCodes.greyscale,
                fontSize: 14,
                fontWeight: FontWeight.w300),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
      ),
    ],
  );
}

Column nametextFieldWithDesc(name, desc, hinttext, controller, errorText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: colorCodes.background),
      ),
      // const SizedBox(
      //   height: 5,
      // ),
      Text(
        desc,
        style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: colorCodes.ashGrey),
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        height: 52,
        child: TextField(
          style: TextStyle(
              fontFamily: 'Outfit',
              color: colorCodes.black,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          controller: controller,
          autocorrect: true,
          //autofocus: true,
          enableSuggestions: true,

          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: colorCodes.borderGrey),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
                fontFamily: 'Outfit',
                color: colorCodes.ashGrey,
                fontSize: 16,
                fontWeight: FontWeight.w400),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
      ),
    ],
  );
}
