import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_invoice/colors/colors.dart';
import 'package:go_invoice/screens/home/input_screen.dart';
import 'package:go_invoice/screens/home/receipt_screen.dart';
import 'package:go_invoice/screens/home/update_screen.dart';
import 'package:go_invoice/screens/home/user.dart';
import 'package:go_invoice/screens/utills/generateBtn.dart';
import 'package:go_invoice/screens/utills/sizedBox.dart';
import 'package:go_invoice/screens/utills/texts/dmsanstxt.dart';
import 'package:go_invoice/screens/utills/texts/outfittxt.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String companyName = 'CHRISTFIELD PRIVATE SCHOOL AND COLLEGE, ADO-EKITI';
  delete(id) async {
    var collection = FirebaseFirestore.instance.collection('invoice');
    // var docUSer =
    setState(() {
      collection.doc(id).delete(); //.then((value) => Navigator.pop(context));
      Navigator.pop(context);
    });
    User? user;

    // if (double.parse(user!.id) < id) {
    //   double dd = double.parse(user!.id) - 1;
    //   user!.id == dd;
    //   print("${user!.id}");
    // }
    // if (user!.id  id) {.

    // }
    // var docs = collection.id;
    // print("collection id$docs{object}");

    // print("iddddddddd ${id}");

    // var co=  FirebaseFirestore.instance
    //     .collection('invoice');
    //   DocumentReference? docc;
    //    FirebaseFirestore.instance
    //       .collection('invoice').where(docc!.id, isGreaterThan: '1003' );
  }

  Stream<List<User>> readUsers() => FirebaseFirestore.instance
      .collection('invoice')
      .snapshots()
      .map((snapsholt) =>
          snapsholt.docs.map((e) => User.fromJson(e.data())).toList());

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: colorCodes.white,
          centerTitle: true,
          toolbarHeight: 70,
          elevation: 2.0,
          shadowColor: colorCodes.neonWhite,
          title: Text(
            'All Invoice',
            style: TextStyle(
              fontFamily: 'DM Sans',
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: colorCodes.eerieBlack,
            ),
          ),
        ),
        backgroundColor: colorCodes.white,
        body: StreamBuilder<List<User>>(
            stream: readUsers(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                    child: Text('Something went wrong ${snapshot.error}'));
              } else if (snapshot.hasData) {
                final users = snapshot.data!.reversed;

                return ListView(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    children: users.map(buildUser).toList());
              } else if (snapshot.data!.isEmpty) {
                return Center(
                  child: Column(
                    children: [
                      Image.asset('assets/images/invoice.png'),
                      heightsizedBox(10.0),
                      dmSanstxt('No invoice yet', 20.0, FontWeight.w400,
                          colorCodes.eerieBlack)
                    ],
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InvoiceInputScreen()));
          },
          backgroundColor: colorCodes.onyx,
          child: Icon(Icons.add_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }

  Widget buildUser(User user) => ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ReceiptScreen(
                        companyName: user.companyName,
                        customerName: user.customerName,
                        customerphone: user.customerPhoneNumber,
                        id: user.id,
                        bankName: user.bankName,
                        companyAcctNum: user.companyAcctNum,
                        companyAcctName: user.companyAcctName,
                        date: user.date,
                        modeofpayment: user.modeofpayment,
                        dueDate: user.dueDate,
                        item: user.item,
                        quantity: user.quantity,
                        price: user.price,
                        amountPaid: user.amountPaid,
                        total: user.total,
                        balance: user.balance,
                        itemTwo: user.itemTwo,
                        quantityTwo: user.quantityTwo,
                        priceTwo: user.priceTwo,
                        amountPaidTwo: user.amountPaidTwo,
                        itemThree: user.itemThree,
                        quantityThree: user.quantityThree,
                        priceThree: user.priceThree,
                        amountPaidThree: user.amountPaidThree,
                        itemFour: user.itemFour,
                        quantityFour: user.quantityFour,
                        priceFour: user.priceFour,
                        amountPaidFour: user.amountPaidFour,
                        itemFive: user.itemFive,
                        quantityFive: user.quantityFive,
                        priceFive: user.priceFive,
                        amountPaidFive: user.amountPaidFive,
                        totalAmountPaid: user.totalAmountPaid,
                        session: user.session,
                        term: user.term,
                        studentClass: user.studentClass,
                        itemSix: user.itemSix,
                        quantitySix: user.quantitySix,
                        priceSix: user.priceSix,
                        amountPaidSix: user.amountPaidSix,
                        itemSeven: user.itemSeven,
                        quantitySeven: user.quantitySeven,
                        priceSeven: user.priceSeven,
                        amountPaidSeven: user.amountPaidSeven,
                        itemEight: user.itemEight,
                        quantityEight: user.quantityEight,
                        priceEight: user.priceEight,
                        amountPaidEight: user.amountPaidEight,
                        itemNine: user.itemNine,
                        quantityNine: user.quantityNine,
                        priceNine: user.priceNine,
                        amountPaidNine: user.amountPaidNine,
                        itemTen: user.itemTen,
                        quantityTen: user.quantityTen,
                        priceTen: user.priceTen,
                        amountPaidTen: user.amountPaidTen,
                      )));
        },
        tileColor: colorCodes.white,
        selectedTileColor: colorCodes.shamRockGreen,
        title: Text(
          'Bill to: ${user.customerName}',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: colorCodes.background),
        ),
        subtitle: Text(
          'Phone Number: ${user.customerPhoneNumber}',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: colorCodes.eerieBlack),
        ),
        leading: PopupMenuButton(
          // initialValue: selectedItem,
          // onSelected: (SampleItem item) {
          //   setState(() {
          //     // selectedItem = item;
          //   });
          // },
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              onTap: () {
                showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (context) => AlertDialog(
                          title: dmSanstxt('Delete?', 20.0, FontWeight.w500,
                              colorCodes.eerieBlack),
                          content: outfitFonttxt(
                              'Are you sure you want to delete this item?',
                              16.0,
                              FontWeight.w400,
                              colorCodes.background),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 55,
                                    width: 100,
                                    child: authbtn('Cancel', () {
                                      Navigator.pop(context);
                                    }, backgroundcolor: colorCodes.paleRed)),
                                widthsizedBox(12.0),
                                SizedBox(
                                    height: 55,
                                    width: 100,
                                    child: authbtn('Ok', () {
                                      delete(user.id);
                                      // Nav
                                    }, backgroundcolor: colorCodes.greenBtn))
                              ],
                            )
                          ],
                        ));
              },
              child: Text('Delete'),
            ),
            PopupMenuItem(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InvoiceUpdateScreen(
                              date: user.date,
                              companyName: user.companyName,
                              customername: user.customerName,
                              itemOne: user.item,
                              quantityOne: user.quantity,
                              priceOne: user.price,
                              amountPaidOne: user.amountPaid,
                              itemTwo: user.itemTwo,
                              quantityTwo: user.quantityTwo,
                              priceTwo: user.priceTwo,
                              amountPaidTwo: user.amountPaidTwo,
                              itemThree: user.itemThree,
                              quantityThree: user.quantityThree,
                              priceThree: user.priceThree,
                              amountPaidThree: user.amountPaidThree,
                              phoneNumberText:
                                  user.customerPhoneNumber.substring(4),
                              accountNum: user.companyAcctNum,
                              sessionText: user.session,
                              totalAmountPaid: user.totalAmountPaid,
                              total: user.total,
                              balance: user.balance,
                              itemFour: user.itemFour,
                              quantityFour: user.quantityFour,
                              priceFour: user.priceFour,
                              amountPaidFour: user.amountPaidFour,
                              itemFive: user.itemFive,
                              quantityFive: user.quantityFive,
                              priceFive: user.priceFive,
                              amountPaidFive: user.amountPaidFive,
                              dueDate: user.dueDate,
                              accountNameText: user.companyAcctName,
                              bankName: user.bankName,
                              classText: user.studentClass,
                              seselectedpAymentMode: user.modeofpayment,
                              selectedterm: user.term,
                              id: user.id,
                              itemSix: user.itemSix,
                              quantitySix: user.quantitySix,
                              priceSix: user.priceSix,
                              amountPaidSix: user.amountPaidSix,
                               itemSeven: user.itemSeven,
                              quantitySeven: user.quantitySeven,
                              priceSeven: user.priceSeven,
                              amountPaidSeven: user.amountPaidSeven,
                               itemEight: user.itemEight,
                              quantityEight: user.quantityEight,
                              priceEight: user.priceEight,
                              amountPaidEight: user.amountPaidEight,
                               itemNine: user.itemNine,
                              quantityNine: user.quantityNine,
                              priceNine: user.priceNine,
                              amountPaidNine: user.amountPaidNine,
                               itemTen: user.itemTen,
                              quantityTen: user.quantityTen,
                              priceTen: user.priceTen,
                              amountPaidTen: user.amountPaidTen,
                            )));
              },
              child: Text('Update'),
            ),
            // const PopupMenuItem(
            //   // value: SampleItem.itemThree,
            //   child: Text('Item 3'),
            // ),
          ],
        ),
        // InkWell(
        //   onTap: () {
        //     showDialog(
        //         barrierDismissible: true,
        //         context: context,
        //         builder: (context) => AlertDialog(
        //           title: dmSanstxt('D', size, weight, color),
        //         ));
        //   },
        //   child: Icon(
        //     Icons.more_vert_outlined,
        //     size: 20,
        //     color: colorCodes.eerieBlack,
        //   ),
        // ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
          color: colorCodes.eerieBlack,
        ),
      );
}
