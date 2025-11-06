import 'dart:io';
// import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/home/home_screen.dart';
import 'package:go_invoice/screens/home/invoice_screen.dart';
import 'package:go_invoice/screens/home/user.dart';
import 'package:go_invoice/screens/utills/dropdown.dart';
import 'package:go_invoice/screens/utills/fields/companytextfield.dart';
import 'package:go_invoice/screens/utills/fields/date_field.dart';
import 'package:go_invoice/screens/utills/fields/itemTxtField.dart';
import 'package:go_invoice/screens/utills/fields/phoneNumberField.dart';
import 'package:go_invoice/screens/utills/fields/rowField.dart';
import 'package:go_invoice/screens/utills/generateBtn.dart';
import 'package:go_invoice/screens/utills/rowinputTable.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';
import 'package:go_invoice/screens/utills/texts/dmsanstxt.dart';
import 'package:go_invoice/screens/utills/toast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
// import 'da';

class InvoiceUpdateScreen extends StatefulWidget {
  const InvoiceUpdateScreen({
    super.key,
    required this.date,
    required this.companyName,
    required this.customername,
    required this.itemOne,
    required this.quantityOne,
    required this.priceOne,
    required this.amountPaidOne,
    required this.itemTwo,
    required this.quantityTwo,
    required this.priceTwo,
    required this.amountPaidTwo,
    required this.itemThree,
    required this.quantityThree,
    required this.priceThree,
    required this.amountPaidThree,
    required this.phoneNumberText,
    required this.accountNum,
    required this.sessionText,
    required this.totalAmountPaid,
    required this.total,
    required this.balance,
    required this.itemFour,
    required this.quantityFour,
    required this.priceFour,
    required this.amountPaidFour,
    required this.itemFive,
    required this.quantityFive,
    required this.priceFive,
    required this.amountPaidFive,
    required this.dueDate,
    required this.accountNameText,
    required this.bankName,
    required this.classText,
    required this.seselectedpAymentMode,
    required this.selectedterm,
    required this.id,
    required this.itemSix,
    required this.quantitySix,
    required this.priceSix,
    required this.amountPaidSix,
    required this.itemSeven,
    required this.quantitySeven,
    required this.priceSeven,
    required this.amountPaidSeven,
    required this.itemEight,
    required this.quantityEight,
    required this.priceEight,
    required this.amountPaidEight,
    required this.itemNine,
    required this.quantityNine,
    required this.priceNine,
    required this.amountPaidNine,
    required this.itemTen,
    required this.quantityTen,
    required this.priceTen,
    required this.amountPaidTen,
  });
  final date,
      companyName,
      customername,
      itemOne,
      quantityOne,
      priceOne,
      amountPaidOne,
      itemTwo,
      quantityTwo,
      priceTwo,
      amountPaidTwo,
      itemThree,
      quantityThree,
      priceThree,
      amountPaidThree,
      phoneNumberText,
      accountNum,
      sessionText,
      totalAmountPaid,
      total,
      balance,
      itemFour,
      quantityFour,
      priceFour,
      amountPaidFour,
      itemFive,
      quantityFive,
      priceFive,
      amountPaidFive,
      dueDate,
      accountNameText,
      bankName,
      classText,
      seselectedpAymentMode,
      selectedterm,
      id,
      itemSix,
      quantitySix,
      priceSix,
      amountPaidSix,
      itemSeven,
      quantitySeven,
      priceSeven,
      amountPaidSeven,
      itemEight,
      quantityEight,
      priceEight,
      amountPaidEight,
      itemNine,
      quantityNine,
      priceNine,
      amountPaidNine,
      itemTen,
      quantityTen,
      priceTen,
      amountPaidTen;
  @override
  State<InvoiceUpdateScreen> createState() => _InvoiceUpdateScreenState();
}

class _InvoiceUpdateScreenState extends State<InvoiceUpdateScreen> {
  TextEditingController companyNameTextController = TextEditingController();
  TextEditingController customernameTextController = TextEditingController();
  TextEditingController itemOneController = TextEditingController();
  TextEditingController quantityOneController = TextEditingController();
  TextEditingController priceOneController = TextEditingController();
  TextEditingController amountPaidOneController = TextEditingController();
  TextEditingController itemTwoController = TextEditingController();
  TextEditingController quantityTwoController = TextEditingController();
  TextEditingController priceTwoController = TextEditingController();
  TextEditingController amountPaidTwoController = TextEditingController();
  TextEditingController itemThreeController = TextEditingController();
  TextEditingController quantityThreeController = TextEditingController();
  TextEditingController priceThreeController = TextEditingController();
  TextEditingController amountPaidThreeController = TextEditingController();
  TextEditingController phoneNumberTextController = TextEditingController();
  TextEditingController accountNumController = TextEditingController();
  TextEditingController totalAmountPaidController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  TextEditingController balanceController = TextEditingController();
  TextEditingController itemFourController = TextEditingController();
  TextEditingController quantityFourController = TextEditingController();
  TextEditingController priceFourController = TextEditingController();
  TextEditingController amountPaidFourController = TextEditingController();
  TextEditingController itemFiveController = TextEditingController();
  TextEditingController quantityFiveController = TextEditingController();
  TextEditingController priceFiveController = TextEditingController();
  TextEditingController amountPaidFiveController = TextEditingController();
  TextEditingController dueDateController = TextEditingController();
  TextEditingController accountNameTextController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController itemSixController = TextEditingController();
  TextEditingController quantitySixController = TextEditingController();
  TextEditingController priceSixController = TextEditingController();
  TextEditingController amountSixController = TextEditingController();
  TextEditingController itemSevenController = TextEditingController();
  TextEditingController quantitySevenController = TextEditingController();
  TextEditingController priceSevenController = TextEditingController();
  TextEditingController amountPaidSevenController = TextEditingController();
  TextEditingController itemEightController = TextEditingController();
  TextEditingController quantityEightController = TextEditingController();
  TextEditingController priceEightController = TextEditingController();
  TextEditingController amountPaidEightController = TextEditingController();
  TextEditingController itemNineController = TextEditingController();
  TextEditingController quantityNineController = TextEditingController();
  TextEditingController priceNineController = TextEditingController();
  TextEditingController amountPaidNineController = TextEditingController();
  TextEditingController itemTenController = TextEditingController();
  TextEditingController quantityTenController = TextEditingController();
  TextEditingController priceTenController = TextEditingController();
  TextEditingController amountPaidTenController = TextEditingController();
  final DateTime now = DateTime.now();
  String formattedDate = '';
  String formattedTime = '';
  // Format date to 'MMM dd, yyyy' (e.g., 'Aug 20, 2023')
  bool isUpdating = false;
  String dialCode = '+234';
  String? selectedPAymentMode;
  String? selectedTerm;
  String? selectedClass;
  String? selectedSession;
  bool issessioniconExpanded = false;
  bool issessiondropdownExpanded = false;
  bool isClassiconExpanded = false;
  bool isclassdropdownExpanded = false;
  // int invoiceNum;
  @override
  void initState() {
    super.initState();

    setState(() {
      customernameTextController.text = widget.customername;
      itemOneController.text = widget.itemOne;
      quantityOneController.text = widget.quantityOne;
      priceOneController.text = widget.priceOne;
      amountPaidOneController.text = widget.amountPaidOne;
      itemTwoController.text = widget.itemTwo;
      quantityTwoController.text = widget.quantityTwo;
      priceTwoController.text = widget.priceThree;
      amountPaidTwoController.text = widget.amountPaidTwo;
      itemThreeController.text = widget.itemThree;
      quantityThreeController.text = widget.quantityThree;
      priceThreeController.text = widget.priceThree;
      amountPaidThreeController.text = widget.amountPaidThree;
      phoneNumberTextController.text = widget.phoneNumberText;
      accountNumController.text = widget.accountNum;
      selectedSession = widget.sessionText;
      totalAmountPaidController.text = widget.totalAmountPaid;
      totalController.text = widget.total;
      balanceController.text = widget.balance;
      itemFourController.text = widget.itemFour;
      quantityFourController.text = widget.quantityFour;
      priceFourController.text = widget.priceFour;
      amountPaidFourController.text = widget.amountPaidFour;
      itemFiveController.text = widget.itemFive;
      quantityFiveController.text = widget.quantityFive;
      priceFiveController.text = widget.priceFive;
      amountPaidFiveController.text = widget.amountPaidFive;
      dueDateController.text = widget.dueDate;
      accountNameTextController.text = widget.accountNameText;
      bankNameController.text = widget.bankName;
      selectedClass = widget.classText;
      selectedPAymentMode = widget.seselectedpAymentMode;
      selectedTerm = widget.selectedterm;
      itemSixController.text = widget.itemSix;
      quantitySixController.text = widget.quantitySix;
      priceSixController.text = widget.priceSix;
      amountSixController.text = widget.amountPaidSix;
      itemSevenController.text = widget.itemSeven;
      quantitySevenController.text = widget.quantitySeven;
      priceSevenController.text = widget.priceSeven;
      amountPaidSevenController.text = widget.amountPaidSeven;
      itemEightController.text = widget.itemEight;
      quantityEightController.text = widget.quantityEight;
      priceEightController.text = widget.priceEight;
      amountPaidEightController.text = widget.amountPaidEight;
      itemNineController.text = widget.itemNine;
      quantityNineController.text = widget.quantityNine;
      priceNineController.text = widget.priceNine;
      amountPaidNineController.text = widget.amountPaidNine;
      itemTenController.text = widget.itemTen;
      quantityTenController.text = widget.quantityTen;
      priceTenController.text = widget.priceTen;
      amountPaidTenController.text = widget.amountPaidTen;

      // invoiceNum = (Random().nextInt(1001) + 1000);
      // formattedDate = DateFormat('MMM dd, yyyy').format(now);

      // Format time to 'hh:mm a' (e.g., '09:44 AM')
      // formattedTime = DateFormat('hh:mm a').format(now);
      // priceOneController.addListener(() {
      //   setState(() {
      //     if (!isUpdating) {
      //       setState(() {
      //         isUpdating = true;
      //         double amountValue =
      //             double.tryParse(priceOneController.text) ?? 0.0;
      //         amountPaidOneController.text =
      //             (amountValue * double.parse(quantityOneController.text))
      //                 .toString();
      //         totalController.text =
      //             double.parse(amountPaidOneController.text).toString();
      //         isUpdating = false;
      //       });
      //     }
      //   });
      // });
      // priceTwoController.addListener(() {
      //   if (!isUpdating) {
      //     setState(() {
      //       isUpdating = true;
      //       double amountValue =
      //           double.tryParse(priceTwoController.text) ?? 0.0;
      //       amountPaidTwoController.text =
      //           (amountValue * double.parse(quantityTwoController.text))
      //               .toString();
      //       totalController.text = (double.parse(amountPaidOneController.text) +
      //               double.parse(amountPaidTwoController.text))
      //           .toString();
      //       isUpdating = false;
      //     });
      //   }
      // });
      // priceThreeController.addListener(() {
      //   if (!isUpdating) {
      //     setState(() {
      //       isUpdating = true;
      //       double amountValue =
      //           double.tryParse(priceThreeController.text) ?? 0.0;
      //       amountPaidThreeController.text =
      //           (amountValue * double.parse(quantityThreeController.text))
      //               .toString();
      //       totalController.text = (double.parse(amountPaidOneController.text) +
      //               double.parse(amountPaidTwoController.text) +
      //               double.parse(amountPaidThreeController.text))
      //           .toString();
      //       isUpdating = false;
      //     });
      //   }
      // });
      // priceFourController.addListener(() {
      //   if (!isUpdating) {
      //     setState(() {
      //       isUpdating = true;
      //       double amountValue =
      //           double.tryParse(priceFourController.text) ?? 0.0;
      //       amountPaidFourController.text =
      //           (amountValue * double.parse(quantityFourController.text))
      //               .toString();
      //       totalController.text = (double.parse(amountPaidOneController.text) +
      //               double.parse(amountPaidTwoController.text) +
      //               double.parse(amountPaidThreeController.text) +
      //               double.parse(amountPaidFourController.text))
      //           .toString();
      //       isUpdating = false;
      //     });
      //   }
      // });
      // priceFiveController.addListener(() {
      //   if (!isUpdating) {
      //     setState(() {
      //       isUpdating = true;
      //       double amountValue =
      //           double.tryParse(priceFiveController.text) ?? 0.0;
      //       amountPaidFiveController.text =
      //           (amountValue * double.parse(quantityFiveController.text))
      //               .toString();
      //       totalController.text = (double.parse(amountPaidOneController.text) +
      //               double.parse(amountPaidTwoController.text) +
      //               double.parse(amountPaidThreeController.text) +
      //               double.parse(amountPaidFourController.text) +
      //               double.parse(amountPaidFiveController.text))
      //           .toString();
      //       // balanceController.text =
      //       //     double.parse(totalController.text).toString();
      //       isUpdating = false;
      //     });
      //   }
      // });

      totalAmountPaidController.addListener(() {
        if (!isUpdating) {
          setState(() {
            isUpdating = true;
            // balanceController.text = 2.toString();
            // String bala = balanceController.text;
            if (totalAmountPaidController.text.isNotEmpty) {
              balanceController.text = (double.parse(totalController.text) -
                      double.parse(totalAmountPaidController.text))
                  .toString();
            }
            // print(dd);
            isUpdating = false;
          });
        }
      });
    });
    setState(() {
      // invoiceNum;
    });
  }

  bool isiconExpanded = false;
  bool isdropdownExpanded = false;
  bool isiconExpandedTwo = false;
  bool isdropdownExpandedTwo = false;
  int NumMaxLenght = 10;
  int current = 0;

  File? selectedImage;

  Future pickImgeFromGal() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }

  bool showSix = false;
  bool showSeven = false;
  bool showEight = false;
  bool showNine = false;
  bool showTen = false;
  List modeOfPaymentList = ['Cash', 'Transfer'];
  List termList = ['FIRST TERM', 'SECOND TERM', 'THIRD TERM'];
  List classList = [
    'KG 1',
    'KG 2',
    'NURSERY 1',
    'NURSERY 2',
    'GRADE 1',
    'GRADE 1 BOARDER',
    'GRADE 2',
    'GRADE 2 BOARDER',
    'GRADE 3',
    'GRADE 3 BOARDER',
    'GRADE 4',
    'GRADE 4 BOARDER',
    'GRADE 5',
    'GRADE 5 BOARDER',
    'GRADE 6',
    'GRADE 6 BOARDER',
    'JSS 1',
    'JSS 2',
    'JSS 3',
    'SSS 1',
    'SSS 2',
    'SSS 3'
  ];
  List sessionList = [
    '2024/2025',
    '2025/2026',
    '2026/2027',
    '2027/2028',
    '2028/2029',
    '2029/2030'
  ];

  Future updateUser({
    required id,
    //     required customerName,
    //     required customerPhoneno,
    //     required dueDate,
    //     required item,
    //     required quantity,
    //     required price,
    //     required amountPaid,
    //     // required shippingFee,
    //     required session,
    //     required totalAmountPaid,
    //     required total,
    //     required balance,
    //     required itemTwo,
    //     required quantityTwo,
    //     required priceTwo,
    //     required amountPaidTwo,
    //     required itemThree,
    //     required quantityThree,
    //     required priceThree,
    //     required amountPaidThree,
    //     required itemFour,
    //     required quantityFour,
    //     required priceFour,
    //     required amountPaidFour,
    //     required itemFive,
    //     required quantityFive,
    //     required priceFive,
    //     required amountPaidFive,
    //     required classcontroller

    //     // required modeofPayment
  }) async {
    var collection = FirebaseFirestore.instance.collection('invoice');
    collection.doc(id).update({
      'totalAmountPaid': totalAmountPaidController.text,
      'balance': balanceController.text,
      'companyLogo': 'assets/images/Christfield.jpg',
      'companyName': widget.companyName,
      'customerName': customernameTextController.text,
      'id': widget.id,
      'customerPhoneNumber': dialCode + phoneNumberTextController.text,
      'companyAccountName': accountNameTextController.text,
      'bank': bankNameController.text,
      'companyAccountNumber': accountNumController.text,
      'modeOfPayment': selectedPAymentMode,
      'date': widget.date,
      'item': itemOneController.text,
      'quantity': quantityOneController.text,
      'price': priceOneController.text,
      'amountPaid': amountPaidOneController.text,

      'total': totalController.text,

      'dueDate': widget.dueDate,
      'itemTwo': itemTwoController.text,
      'quantityTwo': quantityTwoController.text,
      'priceTwo': priceTwoController.text,
      'amountPaidTwo': amountPaidTwoController.text,
      'itemThree': itemThreeController.text,
      'quantityThree': quantityThreeController.text,
      'priceThree': priceThreeController.text,
      'amountPaidThree': amountPaidThreeController.text,
      'itemFour': itemFourController.text,
      'quantityFour': quantityFourController.text,
      'priceFour': priceFourController.text,
      'amountPaidFour': amountPaidFourController.text,
      'itemFive': itemFiveController.text,
      'quantityFive': quantityFiveController.text,
      'priceFive': priceFiveController.text,
      'amountPaidFive': amountPaidFiveController.text,
      'session': selectedSession,

      'term': selectedTerm,
      'studentClass': selectedClass,

      // 'uid': w
    });
    // .then((_) => print('Success'))
    // .catchError((error) => print('Failed: $error'));
    //   var collection = FirebaseFirestore.instance.collection('invoice');
    //   var allDocs = await collection.get();
    //   if (allDocs.docs.isNotEmpty) {
    //     invoiceNum = (int.parse(allDocs.docs.last.id) + 1).toString();
    //   } else {
    //     // int.parse(allDocs.docs.last.id) +
    //     invoiceNum = (1000).toString();
    //   }
    //   // final voice= (int.parse(allDocs.docs.last) + 1).toString();
    //   // invoiceNum = number;

    //   print("invoive numbwr ${invoiceNum}");

    //   final docuser =
    //       FirebaseFirestore.instance.collection('invoice').doc(invoiceNum);
    //   final json = {
    //     'companyLogo': 'assets/images/Christfield.jpg',
    //     'companyName': companyName,
    //     'customerName': customerName,
    //     'id': invoiceNum,
    //     'customerPhoneNumber': customerPhoneno,
    //     'companyAccountName': companyAcctName,
    //     'bank': companyBankName,
    //     'companyAccountNumber': companyAcctNum,
    //     'modeOfPayment': selectedPAymentMode,
    //     'date': formattedDate,
    //     'item': item,
    //     'quantity': quantity,
    //     'price': price,
    //     'amountPaid': amountPaid,
    //     // 'shippingFee': shippingFee,
    //     // 'discount': discount,
    //     // 'tax': tax,
    //     'total': total,
    //     'balance': balance,
    //     'dueDate': dueDate,
    //     'itemTwo': itemTwo,
    //     'quantityTwo': quantityTwo,
    //     'priceTwo': priceTwo,
    //     'amountPaidTwo': amountPaidTwo,
    //     'itemThree': itemThree,
    //     'quantityThree': quantityThree,
    //     'priceThree': priceThree,
    //     'amountPaidThree': amountPaidThree,
    //     'itemFour': itemFour,
    //     'quantityFour': quantityFour,
    //     'priceFour': priceFour,
    //     'amountPaidFour': amountPaidFour,
    //     'itemFive': itemFive,
    //     'quantityFive': quantityFive,
    //     'priceFive': priceFive,
    //     'amountPaidFive': amountPaidFive,
    //     'session': session,
    //     'totalAmountPaid': totalAmountPaid,
    //     'term': selectedTerm,
    //     'studentClass': classcontroller,
    //     'uid': invoiceNum
    //   };
    //   await docuser.set(json);
  }

  User? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCodes.neonWhite,
      appBar: AppBar(
        backgroundColor: colorCodes.white,
        centerTitle: true,
        toolbarHeight: 70,
        elevation: 2.0,
        shadowColor: colorCodes.neonWhite,
        title: Text(
          'Invoice Update',
          style: TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: colorCodes.eerieBlack,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Christfield.jpg'))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      '${widget.companyName}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: colorCodes.background),
                    ),
                  )
                ],
              ),
              heightsizedBox(10.0),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      // width: 185,
                      child: nametextField(
                        'Bill to:',
                        'Enter name of customer ',
                        customernameTextController,
                      ),
                    ),
                    widthsizedBox(6.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Date: ${widget.date}",
                        style: TextStyle(
                          fontFamily: 'DM Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: colorCodes.eerieBlack,
                        ),
                      ),
                    ),
                  ]),
              heightsizedBox(16.0),
              Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: phoneTextfield(
                                'Customer No',
                                phoneNumberTextController,
                                '',
                                'Enter phone number ',
                                '234',
                                NumMaxLenght,
                                context),
                          ),
                          widthsizedBox(6.0),
                          SizedBox(
                            width: 135,
                            child: selectDropdown(
                                context,
                                'Student Class',
                                selectedClass,
                                isClassiconExpanded,
                                isclassdropdownExpanded,
                                classList.map(menuItem).toList(), (newValue) {
                              setState(() {
                                selectedClass = newValue;
                              });
                            }, (isOpen) {
                              setState(() {
                                isclassdropdownExpanded = isOpen;
                                isClassiconExpanded = isOpen;
                              });
                            }),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // nametextField(
                      //   'Payment to:',
                      //   'Enter account name',
                      //   accountNameTextController,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 160,
                            child: selectDropdown(
                                context,
                                'Session',
                                selectedSession,
                                issessioniconExpanded,
                                issessiondropdownExpanded,
                                sessionList.map(menuItem).toList(), (newValue) {
                              setState(() {
                                selectedSession = newValue;
                              });
                            }, (isOpen) {
                              setState(() {
                                issessiondropdownExpanded = isOpen;
                                issessioniconExpanded = isOpen;
                              });
                            }),
                          ),
                          SizedBox(
                            width: 140,
                            child: selectDropdown(
                                context,
                                'Term',
                                selectedTerm,
                                isiconExpandedTwo,
                                isdropdownExpandedTwo,
                                termList.map(menuItem).toList(), (newValue) {
                              setState(() {
                                selectedTerm = newValue;
                              });
                            }, (isOpen) {
                              setState(() {
                                isdropdownExpandedTwo = isOpen;
                                isiconExpandedTwo = isOpen;
                              });
                            }),
                          ),
                          // SizedBox(
                          //   width: 112,
                          //   child: nametextField(
                          //     'Class',
                          //     'Nursery 1',
                          //     classTextController,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      dmSanstxt('Payment to:', 16.0, FontWeight.w500,
                          colorCodes.background),
                      Text(
                        'CHRISTFIELD INTERNATIONAL SCHOOLS ADO - EKITI',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: colorCodes.background),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              dmSanstxt('Bank Name:', 16.0, FontWeight.w500,
                                  colorCodes.background),
                              SizedBox(
                                  width: 195,
                                  child: itemField('', bankNameController,
                                      onchanged: (value) {
                                    setState(() {
                                      bankNameController.text = value;
                                    });
                                  })),
                            ],
                          )),
                          widthsizedBox(6.0),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              dmSanstxt('Account Number:', 16.0,
                                  FontWeight.w500, colorCodes.background),
                              SizedBox(
                                  width: 195,
                                  child: itemField('', accountNumController)),
                            ],
                          )
                              //  accountNumTextfield(
                              //     accountNumController, 'Account Num', '012345678'),

                              ),
                        ],
                      ),
                      heightsizedBox(6.0),

                      SizedBox(
                        // width: 160,
                        child: selectDropdown(
                            context,
                            'Mode of payment',
                            selectedPAymentMode,
                            isiconExpanded,
                            isdropdownExpanded,
                            modeOfPaymentList.map(menuItem).toList(),
                            (newValue) {
                          setState(() {
                            selectedPAymentMode = newValue;
                          });
                        }, (isOpen) {
                          setState(() {
                            isdropdownExpanded = isOpen;
                            isiconExpanded = isOpen;
                          });
                        }),
                      ),
                    ],
                  )),
              heightsizedBox(15.0),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(color: colorCodes.ashGrey),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 15,
                            child: dmSanstxt('#', 14.0, FontWeight.w400,
                                colorCodes.neonWhite),
                          ),
                          widthsizedBox(6.0),
                          Expanded(
                              child: dmSanstxt('ITEM', 14.0, FontWeight.w400,
                                  colorCodes.neonWhite)),
                          SizedBox(
                            width: 40,
                            child: dmSanstxt('QTY', 14.0, FontWeight.w400,
                                colorCodes.neonWhite),
                          ),
                          widthsizedBox(6.0),
                          SizedBox(
                            width: 60,
                            child: dmSanstxt('PRICE', 14.0, FontWeight.w400,
                                colorCodes.neonWhite),
                          ),
                          widthsizedBox(6.0),
                          SizedBox(
                            width: 100,
                            child: dmSanstxt('TOTAL', 14.0, FontWeight.w400,
                                colorCodes.neonWhite),
                          ),
                        ],
                      ),
                    ),
                    // heightsizedBox(5.0),
                    Container(
                      height: 1.5,
                      decoration: BoxDecoration(color: colorCodes.redAccent),
                    ),
                    heightsizedBox(10.0),
                    rowInputTable(
                      '1',
                      itemOneController,
                      quantityOneController,
                      priceOneController,
                      amountPaidOneController,
                    ),
                    rowInputTable(
                      '2',
                      itemTwoController,
                      quantityTwoController,
                      priceTwoController,
                      amountPaidTwoController,
                    ),
                    rowInputTable(
                      '3',
                      itemThreeController,
                      quantityThreeController,
                      priceThreeController,
                      amountPaidThreeController,
                    ),
                    rowInputTable(
                      '4',
                      itemFourController,
                      quantityFourController,
                      priceFourController,
                      amountPaidFourController,
                    ),
                    rowInputTable(
                      '5',
                      itemFiveController,
                      quantityFiveController,
                      priceFiveController,
                      amountPaidFiveController,
                    ),
                    itemSixController.text.isNotEmpty
                        ? rowInputTable(
                            6,
                            itemSixController,
                            quantitySixController,
                            priceSixController,
                            amountSixController,
                          )
                        : Container(),
                    itemSevenController.text.isNotEmpty
                        ? rowInputTable(
                            7,
                            itemSevenController,
                            quantitySevenController,
                            priceSevenController,
                            amountPaidSevenController,
                          )
                        : Container(),
                    itemEightController.text.isNotEmpty
                        ? rowInputTable(
                            8,
                            itemEightController,
                            quantityEightController,
                            priceEightController,
                            amountPaidEightController,
                          )
                        : Container(),
                    itemNineController.text.isNotEmpty
                        ? rowInputTable(
                            9,
                            itemNineController,
                            quantityNineController,
                            priceNineController,
                            amountPaidNineController,
                          )
                        : Container(),
                    itemTenController.text.isNotEmpty
                        ? rowInputTable(
                            10,
                            itemTenController,
                            quantityTenController,
                            priceTenController,
                            amountPaidTenController,
                          )
                        : Container(),
                  ],
                ),
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: InkWell(
              //     onTap: () {
              //       if (showSix == false &&
              //           showSeven == false &&
              //           showEight == false &&
              //           showNine == false &&
              //           showTen == false) {
              //         setState(() {
              //           showSix = true;
              //         });
              //       } else if (showSix == true &&
              //           showSeven == false &&
              //           showEight == false &&
              //           showNine == false &&
              //           showTen == false) {
              //         setState(() {
              //           showSeven = true;
              //         });
              //       } else if (showSix == true &&
              //           showSeven == true &&
              //           showEight == false &&
              //           showNine == false &&
              //           showTen == false) {
              //         setState(() {
              //           showEight = true;
              //         });
              //       } else if (showSix == true &&
              //           showSeven == true &&
              //           showEight == true &&
              //           showNine == false &&
              //           showTen == false) {
              //         setState(() {
              //           showNine = true;
              //         });
              //       } else if (showSix == true &&
              //           showSeven == true &&
              //           showEight == true &&
              //           showNine == true &&
              //           showTen == false) {
              //         setState(() {
              //           showTen = true;
              //         });
              //       }
              //     },
              //     child: dmSanstxt(
              //       'Add Row',
              //       16.0,
              //       FontWeight.w500,
              //       colorCodes.darkGreen,
              //     ),
              //   ),
              // ),
              heightsizedBox(20.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    rowField('Total', totalController),

                    rowField(
                      'Total Amount Paid',
                      totalAmountPaidController,
                    ),
                    rowField('Balance To Be Paid', balanceController)

                    // rowField('Tax', taxController),
                    // rowField('Amount paid', totalAmountPaidController),
                    // rowField('Balance', balanceController)
                  ],
                ),
              ),
              heightsizedBox(25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 175,
                    child: dateofbirthTxtField('Due Date', dueDateController,
                        () async {
                      var date = DateTime.now();
                      DateTime? duedate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2555));
                      if (duedate != null) {
                        setState(() {
                          dueDateController.text =
                              DateFormat('d/MM/yyyy').format(duedate);
                        });
                      }
                    }),
                  ),
                  widthsizedBox(6.0),
                  SizedBox(
                    height: 63,
                    width: 120,
                    child: authbtn('Update\nInvoice', () {
                      if (customernameTextController.text.isEmpty ||
                          itemOneController.text.isEmpty ||
                          quantityOneController.text.isEmpty ||
                          priceOneController.text.isEmpty ||
                          amountPaidOneController.text.isEmpty ||
                          phoneNumberTextController.text.isEmpty ||
                          totalAmountPaidController.text.isEmpty ||
                          balanceController.text.isEmpty ||
                          totalController.text.isEmpty ||
                          dueDateController.text.isEmpty ||
                          selectedClass == null ||
                          selectedSession == null ||
                          selectedPAymentMode == null ||
                          selectedTerm == null) {
                        showToast(
                            'Incomplete fields', colorCodes.redAccent, context);
                      } else if (quantityTwoController.text.isNotEmpty &&
                          priceTwoController.text.isNotEmpty &&
                          itemTwoController.text.isEmpty) {
                        showToast('Please input the fields properly',
                            colorCodes.redAccent, context);
                      } else {
                        updateUser(id: widget.id);
                        // createUser(
                        //   customerName: customernameTextController.text,
                        //   customerPhoneno:
                        //       '+234${phoneNumberTextController.text}',
                        //   dueDate: dueDateController.text,
                        //   item: itemOneController.text,
                        //   quantity: quantityOneController.text,
                        //   price: priceOneController.text,
                        //   amountPaid: amountPaidOneController.text,
                        //   // shippingFee: shippingFeeController.text,
                        //   // discount: discountController.text,
                        //   // tax: taxController.text,
                        //   total: totalController.text,
                        //   balance: balanceController.text,
                        //   itemTwo: itemTwoController.text,
                        //   quantityTwo: quantityTwoController.text,
                        //   priceTwo: priceTwoController.text,
                        //   amountPaidTwo: amountPaidTwoController.text,
                        //   itemThree: itemThreeController.text,
                        //   quantityThree: quantityThreeController.text,
                        //   priceThree: priceThreeController.text,
                        //   amountPaidThree: amountPaidThreeController.text,
                        //   itemFour: itemFourController.text,
                        //   quantityFour: quantityFourController.text,
                        //   priceFour: priceFourController.text,
                        //   amountPaidFour: amountPaidFourController.text,
                        //   itemFive: itemFiveController.text,
                        //   quantityFive: quantityFiveController.text,
                        //   priceFive: priceFiveController.text,
                        //   amountPaidFive: amountPaidFiveController.text,
                        //   session: sessionTextController.text,
                        //   totalAmountPaid: totalAmountPaidController.text,
                        //   classcontroller: classTextController.text,
                        // );

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    }),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Null get newMethod => null;

  DropdownMenuItem<String> menuItem(bank) {
    return DropdownMenuItem(
        value: bank,
        child: Text(
          bank,
          style: TextStyle(
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
              color: colorCodes.background),
        ));
  }
}
