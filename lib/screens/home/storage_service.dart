// lib/services/storage_service.dart
import 'package:go_invoice/screens/home/invoice_model.dart';
import 'package:hive/hive.dart';

class StorageService {
  static Box<Invoice> get _box => Hive.box<Invoice>('invoices');

  static List<Invoice> getAllInvoices() {
    return _box.values.toList();
  }

  static Future<void> addInvoice(Invoice invoice) async {
    await _box.add(invoice);
  }

  static Future<void> updateInvoice(int key, Invoice invoice) async {
    await _box.putAt(key, invoice);
  }

  static Future<void> deleteInvoice(int key) async {
    await _box.deleteAt(key);
  }

  static String generateNextInvoiceNumber() {
    final invoices = _box.values.toList();
    if (invoices.isEmpty) return '1000';
    // Try parse last id as int -> increment
    try {
      final ids =
          invoices.map((e) => int.tryParse(e.id)).whereType<int>().toList();
      ids.sort();
      final last = ids.isNotEmpty ? ids.last : 999;
      return (last + 1).toString();
    } catch (e) {
      return DateTime.now().millisecondsSinceEpoch.toString();
    }
  }
}
