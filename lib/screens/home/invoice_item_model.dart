import 'package:hive/hive.dart';
part 'invoice_item_model.g.dart';

@HiveType(typeId: 1)
class InvoiceItem extends HiveObject {
  @HiveField(0)
  String item;

  @HiveField(1)
  int quantity;

  @HiveField(2)
  double price;

  @HiveField(3)
  double total;

  InvoiceItem({
    required this.item,
    required this.quantity,
    required this.price,
  }) : total = quantity * price;
}
