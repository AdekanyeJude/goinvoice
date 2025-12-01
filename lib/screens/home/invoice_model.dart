import 'package:go_invoice/screens/home/invoice_item_model.dart';
import 'package:hive/hive.dart';
part 'invoice_model.g.dart';
@HiveType(typeId: 0)
class Invoice extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String customerName;

  @HiveField(2)
  String customerPhone;

  @HiveField(3)
  String dialCode;

  @HiveField(4)
  String date;

  @HiveField(5)
  String dueDate;

  @HiveField(6)
  String companyName;

  @HiveField(7)
  String bankName;

  @HiveField(8)
  String accountNumber;

  @HiveField(9)
  String accountName;

  @HiveField(10)
  String modeOfPayment;

  @HiveField(11)
  String session;

  @HiveField(12)
  String term;

  @HiveField(13)
  String studentClass;

  @HiveField(14)
  List<InvoiceItem> items;

  @HiveField(15)
  double total;

  @HiveField(16)
  double totalPaid;

  @HiveField(17)
  double balance;

  Invoice({
    required this.id,
    required this.customerName,
    required this.customerPhone,
    required this.dialCode,
    required this.date,
    required this.dueDate,
    required this.companyName,
    required this.bankName,
    required this.accountNumber,
    required this.accountName,
    required this.modeOfPayment,
    required this.session,
    required this.term,
    required this.studentClass,
    required this.items,
    required this.total,
    required this.totalPaid,
    required this.balance,
  });
}
// @HiveType(typeId: 0)
// class Invoice extends HiveObject {
//   @HiveField(0)
//   String id;

//   @HiveField(1)
//   String customerName;

//   @HiveField(2)
//   String phone;

//   @HiveField(3)
//   String date;

//   @HiveField(4)
//   String dueDate;

//   @HiveField(5)
//   List<InvoiceItem> items;

//   @HiveField(6)
//   double total;

//   @HiveField(7)
//   double totalPaid;

//   @HiveField(8)
//   double balance;

//   @HiveField(9)
//   String session;

//   @HiveField(10)
//   String term;

//   @HiveField(11)
//   String studentClass;

//   @HiveField(12)
//   String bankName;

//   @HiveField(13)
//   String accountNumber;

//   Invoice({
//     required this.id,
//     required this.customerName,
//     required this.phone,
//     required this.date,
//     required this.dueDate,
//     required this.items,
//     required this.total,
//     required this.totalPaid,
//     required this.balance,
//     required this.session,
//     required this.term,
//     required this.studentClass,
//     required this.bankName,
//     required this.accountNumber,
//   });
// }

void saveInvoice(Invoice invoice) {
  var box = Hive.box<Invoice>('invoices');
  box.add(invoice);
}

List<Invoice> getInvoices() {
  var box = Hive.box<Invoice>('invoices');
  return box.values.toList();
}
