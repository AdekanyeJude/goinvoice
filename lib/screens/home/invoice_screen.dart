import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:gallery_saver_updated/gallery_saver.dart';

import 'package:go_invoice/screens/home/home_screen.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/utills/generateBtn.dart';
import 'package:go_invoice/screens/utills/rowTable.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';
import 'package:go_invoice/screens/utills/texts/dmsanstxt.dart';
import 'package:go_invoice/screens/utills/texts/outfittxt.dart';
import 'package:go_invoice/screens/utills/toast.dart';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({
    super.key,
    required this.date,
    // required this.companyLogo,
    required this.companyName,
    required this.customerName,
    required this.customerphone,
    required this.dialCode,
    required this.companyAcctNum,
    required this.item,
    required this.quantity,
    required this.price,
    required this.amountPaid,
    required this.companyAcctName,
    required this.totalAmountPaid,
    required this.balance,
    required this.dueDate,
    required this.invoiceNumber,
    required this.itemTwo,
    required this.quantityTwo,
    required this.priceTwo,
    required this.amountPaidTwo,
    required this.itemThree,
    required this.quantityThree,
    required this.priceThree,
    required this.amountPaidThree,
    required this.itemFour,
    required this.quantityFour,
    required this.priceFour,
    required this.amountPaidFour,
    required this.itemFive,
    required this.quantityFive,
    required this.priceFive,
    required this.amountPaidFive,
    required this.bankName,
    required this.modeofpayment,
    required this.session,
    required this.term,
    required this.total,
    required this.studentClass,
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
      // companyLogo,
      companyName,
      customerName,
      customerphone,
      dialCode,
      companyAcctNum,
      companyAcctName,
      bankName,
      item,
      quantity,
      price,
      amountPaid,
      total,
      totalAmountPaid,
      balance,
      dueDate,
      invoiceNumber,
      itemTwo,
      quantityTwo,
      priceTwo,
      amountPaidTwo,
      itemThree,
      quantityThree,
      priceThree,
      amountPaidThree,
      itemFour,
      quantityFour,
      priceFour,
      amountPaidFour,
      itemFive,
      quantityFive,
      priceFive,
      amountPaidFive,
      modeofpayment,
      session,
      term,
      studentClass,
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
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  Uint8List? bytes;
  final screenshotController = ScreenshotController();

  Future<void> _downloadReceipt(context) async {
    await screenshotController
        .capture(delay: Duration(milliseconds: 10))
        .then((image) async {
      if (image != null) {
        final directory = await getApplicationDocumentsDirectory();
        final imagePath = await ('${directory.path}/image.png'); //.create();
        await File(imagePath).writeAsBytes(image);
        // ImageGallerySaver.saveImage(image, name: imagePath);
        // .then((path) {
        // showToast(
        //     "Receipt downloaded successfully", colorCodes.greenBtn, context);
        // });
      }
    });
  }

  Future saveImage(Uint8List bytes) async {
    final appStorage = await getApplicationDocumentsDirectory();
    File file = File('${appStorage.path}/xpressReceipt.png');
    file.writeAsBytes(bytes);
  }

  _shareReceipt() async {
    await screenshotController
        .capture(delay: Duration(milliseconds: 10))
        .then((image) async {
      if (image != null) {
        final directory = await getApplicationDocumentsDirectory();
        final imagePath = await ('${directory.path}/image.png'); //.create();
        await File(imagePath).writeAsBytes(image);

        /// Share Plugin
        //  await Share.shareFiles([imagePath.path]);
        await Share.shareXFiles([XFile(imagePath)]);
      }
    });
  }

  String invoiceNum = '';
  @override
  void initState() {
    super.initState();

    create();

    setState(() {});
  }

  Future create() async {
    var collection = FirebaseFirestore.instance.collection('invoice');
    var allDocs = await collection.get();
    setState(() {
      if (allDocs.docs.isNotEmpty) {
        invoiceNum = (int.parse(allDocs.docs.last.id) + 1).toString();
      } else {
        // int.parse(allDocs.docs.last.id) +
        invoiceNum = (1000).toString();
      }
      // invoiceNum = number;
      print("invoive numbwr ${invoiceNum}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCodes.white,
      body: ListView(
        // padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        children: [
          Screenshot(
            controller: screenshotController,
            child: Container(
              color: colorCodes.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // widget.companyLogo == null  ?
                                  Container(
                                    height: 65,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/Christfield.jpg'))),
                                  ),
                                  // : SizedBox(
                                  //     height: 80,
                                  //     width: 60,
                                  //     child:
                                  //         Image.file(widget.companyLogo)),
                                  // heightsizedBox(6.0),
                                  SizedBox(
                                    width: 220,
                                    child: Text(
                                        'CHRISTFIELD PRIVATE SCHOOL AND COLLEGE, ADO-EKITI.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w500,
                                            color: colorCodes.eerieBlack)),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  dmSanstxt('Invoice #$invoiceNum', 20.0,
                                      FontWeight.w500, colorCodes.eerieBlack),
                                  Text(
                                    widget.date,
                                    style: TextStyle(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: colorCodes.background),
                                  ),
                                  // heightsizedBox(65.0),
                                ],
                              ),
                            ],
                          ),
                        ),
                        heightsizedBox(12.0),
                        Align(
                          child: Column(
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    // dmSanstxt(
                                    //     'Bill to:',
                                    //     16.0,
                                    //     FontWeight.w500,
                                    //     colorCodes.background),
                                    SizedBox(
                                      child: outfitFonttxt(
                                        "Bill to: ${widget.customerName}",
                                        16.0,
                                        FontWeight.w600,
                                        colorCodes.eerieBlack,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          // dmSanstxt(
                                          //     'PhoneNo:',
                                          //     16.0,
                                          //     FontWeight.w500,
                                          //     colorCodes.background),
                                          SizedBox(
                                            child: outfitFonttxt(
                                                "PhoneNo: ${widget.dialCode + widget.customerphone}",
                                                16.0,
                                                FontWeight.w400,
                                                colorCodes.eerieBlack),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        dmSanstxt(
                                            'Class',
                                            16.0,
                                            FontWeight.w500,
                                            colorCodes.background),
                                        SizedBox(
                                          // width: 190,
                                          // width: MediaQuery.of(context)
                                          //             .size
                                          //             .width /
                                          //         2 -
                                          //     18,
                                          child: outfitFonttxt(
                                              "${widget.studentClass}",
                                              14.0,
                                              FontWeight.w400,
                                              colorCodes.eerieBlack),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              heightsizedBox(8.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        dmSanstxt(
                                            'Session',
                                            16.0,
                                            FontWeight.w500,
                                            colorCodes.background),
                                        SizedBox(
                                          child: outfitFonttxt(
                                              "${widget.session}",
                                              14.0,
                                              FontWeight.w400,
                                              colorCodes.eerieBlack),
                                        ),
                                      ],
                                    ),
                                  ),
                                  widthsizedBox(6.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        dmSanstxt('Term', 16.0, FontWeight.w500,
                                            colorCodes.background),
                                        SizedBox(
                                          child: outfitFonttxt(
                                              "${widget.term}",
                                              14.0,
                                              FontWeight.w400,
                                              colorCodes.eerieBlack),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // widthsizedBox(6.0),
                                  // Expanded(
                                  //   child: Column(
                                  //     crossAxisAlignment:
                                  //         CrossAxisAlignment.start,
                                  //     children: [
                                  //       dmSanstxt(
                                  //           'Class',
                                  //           16.0,
                                  //           FontWeight.w500,
                                  //           colorCodes.background),
                                  //       SizedBox(
                                  //         // width: 190,
                                  //         // width: MediaQuery.of(context)
                                  //         //             .size
                                  //         //             .width /
                                  //         //         2 -
                                  //         //     18,
                                  //         child: outfitFonttxt(
                                  //             "${widget.studentClass}",
                                  //             14.0,
                                  //             FontWeight.w400,
                                  //             colorCodes.eerieBlack),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                              heightsizedBox(8.0),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Row(
                                    // children: [
                                    dmSanstxt('Payment to:', 16.0,
                                        FontWeight.w500, colorCodes.background),

                                    Text(
                                      'CHRISTFIELD INTERNATIONAL SCHOOLS ADO - EKITI',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: colorCodes.background),
                                    ),
                                    //   ],
                                    // ),
                                    heightsizedBox(8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              dmSanstxt(
                                                  'Bank name:',
                                                  16.0,
                                                  FontWeight.w500,
                                                  colorCodes.background),
                                              SizedBox(
                                                // width: MediaQuery.of(context)
                                                //             .size
                                                //             .width /
                                                //         2 -
                                                //     22,
                                                child: outfitFonttxt(
                                                    widget.bankName,
                                                    14.0,
                                                    FontWeight.w400,
                                                    colorCodes.eerieBlack),
                                              ),
                                            ],
                                          ),
                                        ),
                                        widthsizedBox(6.0),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              dmSanstxt(
                                                  'AccountNo:',
                                                  16.0,
                                                  FontWeight.w500,
                                                  colorCodes.background),
                                              SizedBox(
                                                // width: 190,
                                                // width: MediaQuery.of(context)
                                                //             .size
                                                //             .width /
                                                //         2 -
                                                //     18,
                                                child: outfitFonttxt(
                                                    widget.companyAcctNum,
                                                    14.0,
                                                    FontWeight.w400,
                                                    colorCodes.eerieBlack),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    //  outfitFonttxt(
                                    // "${widget.companyAcctName}   AccountNo:${widget.companyAcctNum}",
                                    // 16.0,
                                    // FontWeight.w400,
                                    // colorCodes.eerieBlack),
                                    heightsizedBox(5.0),

                                    dmSanstxt(
                                        "Mode of payment: ${widget.modeofpayment}",
                                        16.0,
                                        FontWeight.w500,
                                        colorCodes.eerieBlack),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  heightsizedBox(20.0),
                  Container(
                    // height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                        color: colorCodes.borderGrey.withOpacity(0.6)),
                    child: Column(
                      children: [
                        Container(
                          height: 3,
                          decoration: BoxDecoration(color: colorCodes.paleRed),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 15,
                                child: dmSanstxt('#', 14.0, FontWeight.w400,
                                    colorCodes.eerieBlack),
                              ),
                              widthsizedBox(6.0),
                              Expanded(
                                  child: dmSanstxt('ITEM', 14.0,
                                      FontWeight.w400, colorCodes.eerieBlack)),
                              SizedBox(
                                width: 40,
                                child: dmSanstxt('QTY', 14.0, FontWeight.w400,
                                    colorCodes.eerieBlack),
                              ),
                              widthsizedBox(6.0),
                              SizedBox(
                                width: 60,
                                child: dmSanstxt('PRICE', 14.0, FontWeight.w400,
                                    colorCodes.eerieBlack),
                              ),
                              widthsizedBox(6.0),
                              SizedBox(
                                width: 100,
                                child: dmSanstxt('TOTAL AMOUNT', 14.0,
                                    FontWeight.w400, colorCodes.eerieBlack),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 3,
                          decoration: BoxDecoration(color: colorCodes.paleRed),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              rowTable('1', widget.item, widget.quantity,
                                  widget.price, widget.amountPaid),
                              widget.itemTwo == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemTwo == ''
                                  ? Container()
                                  : rowTable(
                                      '2',
                                      widget.itemTwo,
                                      widget.quantityTwo,
                                      widget.priceTwo,
                                      widget.amountPaidTwo),
                              widget.itemThree == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemThree == ''
                                  ? Container()
                                  : rowTable(
                                      '3',
                                      widget.itemThree,
                                      widget.quantityThree,
                                      widget.priceThree,
                                      widget.amountPaidThree),
                              widget.itemFour == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemFour == ''
                                  ? Container()
                                  : rowTable(
                                      '4',
                                      widget.itemFour,
                                      widget.quantityFour,
                                      widget.priceFour,
                                      widget.amountPaidFour),
                              widget.itemFive == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemFive == ''
                                  ? Container()
                                  : rowTable(
                                      '5',
                                      widget.itemFive,
                                      widget.quantityFive,
                                      widget.priceFive,
                                      widget.amountPaidFive),
                              widget.itemSix == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemSix == ''
                                  ? Container()
                                  : rowTable(
                                      '6',
                                      widget.itemSix,
                                      widget.quantitySix,
                                      widget.priceSix,
                                      widget.amountPaidSix),
                              widget.itemSeven == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemSeven == ''
                                  ? Container()
                                  : rowTable(
                                      '7',
                                      widget.itemSeven,
                                      widget.quantitySeven,
                                      widget.priceSeven,
                                      widget.amountPaidSeven),
                              widget.itemEight == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemEight == ''
                                  ? Container()
                                  : rowTable(
                                      '8',
                                      widget.itemEight,
                                      widget.quantityEight,
                                      widget.priceEight,
                                      widget.amountPaidEight),
                              widget.itemNine == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemNine == ''
                                  ? Container()
                                  : rowTable(
                                      '9',
                                      widget.itemNine,
                                      widget.quantityNine,
                                      widget.priceNine,
                                      widget.amountPaidNine),
                              widget.itemTen == ''
                                  ? Container()
                                  : heightsizedBox(6.0),
                              widget.itemTen == ''
                                  ? Container()
                                  : rowTable(
                                      '10',
                                      widget.itemTen,
                                      widget.quantityTen,
                                      widget.priceTen,
                                      widget.amountPaidTen),
                              heightsizedBox(60.0),
                              rowTable2('', '', '', 'Total', widget.total),
                              rowTable2('', '', '', 'Total Amount Paid',
                                  "${widget.totalAmountPaid}.0",
                                  color: colorCodes.shamRockGreen),
                              rowTable2('', '', '', 'Balance', widget.balance,
                                  color: colorCodes.paleRed),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  heightsizedBox(10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Align(
                      // alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                dmSanstxt('Due date: ', 18.0, FontWeight.w500,
                                    colorCodes.onyx),
                                dmSanstxt('${widget.dueDate} ', 18.0,
                                    FontWeight.w500, colorCodes.onyx),
                              ],
                            ),
                          ),
                          widthsizedBox(6.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                dmSanstxt('Contact Info:  ', 18.0,
                                    FontWeight.w500, colorCodes.onyx),
                                dmSanstxt('+2348109919966', 18.0,
                                    FontWeight.w500, colorCodes.onyx),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  heightsizedBox(14.0),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: Row(
                      children: [
                        SizedBox(
                            width: 120,
                            child: authbtn('Download', () {
                              _downloadReceipt(context);
                            })),
                        widthsizedBox(10.0),
                        SizedBox(
                            width: 120,
                            child: authbtn('Share', () async {
                              print('object');
                              _shareReceipt();
                            }))
                      ],
                    ),
                  ),
                  heightsizedBox(10.0),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          width: 250,
                          child: authbtn('Continue', () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          }))),
                  heightsizedBox(10.0),
                ],
              ))
        ],
      ),
    );
  }
}
