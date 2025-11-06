import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';
import 'package:go_invoice/screens/utills/texts/dmsanstxt.dart';
import 'package:go_invoice/screens/utills/texts/outfittxt.dart';

Widget selectDropdown(context, descr, selecteddropdown, isiconexpanded,
    isdropdownexpanded, dropdownlist, onchanged, onMenuStateChange) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      dmSanstxt(descr, 16.0, FontWeight.w500, colorCodes.eerieBlack),
      heightsizedBox(6.0),
      Align(
        alignment: Alignment.centerLeft,
        child: DropdownButtonHideUnderline(
            child: DropdownButton2(
          style: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: colorCodes.shamRockGreen),
          value: selecteddropdown,
          hint: outfitFonttxt(
              'Select', 16.0, FontWeight.w400, colorCodes.ashGrey),
          dropdownStyleData: DropdownStyleData(
              elevation: 2,
              decoration: BoxDecoration(
                  color: colorCodes.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: colorCodes.borderGrey,
                        spreadRadius: 0.4,
                        blurRadius: 0.2)
                  ],
                  border: Border.all(
                      color: colorCodes.borderGrey,
                      // .withOpacity(0.4000000059604645),
                      width: 1,
                      style: BorderStyle.solid))),
          buttonStyleData: ButtonStyleData(
              height: 52,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: isdropdownexpanded == true
                          ? colorCodes.darkGrey
                          : colorCodes.borderGrey,
                      width: 1.2))),
          iconStyleData: IconStyleData(
              icon: Image.asset(
            isiconexpanded == true
                ? 'assets/images/arrow-circle-down.png'
                : 'assets/images/arrow-circle-down (1).png',
            height: 22.0,
            width: 22.0,
          )),
          isExpanded: true,
          items: dropdownlist,
          onChanged: onchanged,
          onMenuStateChange: onMenuStateChange,
        )),
      ),
    ],
  );
}

Widget searchableBankDropdown(
    descr, enabled, selectedItem, hint, searchHint, banklist, onchanged) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      dmSanstxt(descr, 16.0, FontWeight.w500, colorCodes.eerieBlack),
      heightsizedBox(10.0),
      DropdownSearch(
          enabled: enabled,
          selectedItem: selectedItem,
          items: banklist,
          popupProps: PopupProps.menu(
            menuProps: MenuProps(
              backgroundColor: colorCodes.white,
              borderRadius: BorderRadius.circular(8),
            ),
            searchFieldProps: TextFieldProps(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: colorCodes.ashGrey,
                    ),
                    hintText: searchHint,
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: colorCodes.borderGrey,
                            width: 1,
                            style: BorderStyle.solid)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: colorCodes.borderGrey,
                            width: 1,
                            style: BorderStyle.solid))),
                style: TextStyle(
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: colorCodes.shamRockGreen)),
            showSearchBox: true,
            // isFilterOnline: true,
          ),
          suffixProps: DropdownSuffixProps(
            clearButtonProps: ClearButtonProps(
                icon: Icon(
              Icons.clear,
              size: 20,
              color: colorCodes.redAccent,
            )),
            dropdownButtonProps: DropdownButtonProps(
                padding: EdgeInsets.symmetric(horizontal: 12),
                selectedIcon: Image.asset(
                  'assets/imgs/icons/arrow-circle-down.png',
                  height: 22.0,
                  width: 22.0,
                )),
          ),
          decoratorProps: DropDownDecoratorProps(
            baseStyle: TextStyle(
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
                color: colorCodes.shamRockGreen),
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: colorCodes.borderGrey,
                    width: 1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(8),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              // labelText: "Select",
              hintStyle: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: colorCodes.ashGrey),
              hintText: hint,
            ),
          ),
          onChanged: onchanged)
    ],
  );
}

Widget narrationTextfield(descr, textControllerId, onchanged) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        descr,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 16,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w500,
            color: colorCodes.background),
      ),
      heightsizedBox(10.0),
      Container(
        height: 52,
        padding: const EdgeInsets.all(0),
        // color: Colors.white,
        child: TextField(
          onChanged: onchanged,
          controller: textControllerId,
          autocorrect: true,
          // maxLines: 3,
          enableSuggestions: true,
          style: TextStyle(
              fontFamily: 'Outfit',
              color: colorCodes.darkGreen,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            // counter: Text(''),
            isDense: true,

            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: colorCodes.borderGrey),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),

            // labelStyle: TextStyle(
            //     fontSize: 16, fontWeight: FontWeight.w400, color: colorCodes.black),
            hintStyle: TextStyle(
                color: colorCodes.greyscale,
                fontSize: 16,
                fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: colorCodes.borderGrey),
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: colorCodes.borderGrey),
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
