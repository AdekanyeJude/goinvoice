// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceAdapter extends TypeAdapter<Invoice> {
  @override
  final int typeId = 0;

  @override
  Invoice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Invoice(
      id: fields[0] as String,
      customerName: fields[1] as String,
      customerPhone: fields[2] as String,
      dialCode: fields[3] as String,
      date: fields[4] as String,
      dueDate: fields[5] as String,
      companyName: fields[6] as String,
      bankName: fields[7] as String,
      accountNumber: fields[8] as String,
      accountName: fields[9] as String,
      modeOfPayment: fields[10] as String,
      session: fields[11] as String,
      term: fields[12] as String,
      studentClass: fields[13] as String,
      items: (fields[14] as List).cast<InvoiceItem>(),
      total: fields[15] as double,
      totalPaid: fields[16] as double,
      balance: fields[17] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Invoice obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.customerName)
      ..writeByte(2)
      ..write(obj.customerPhone)
      ..writeByte(3)
      ..write(obj.dialCode)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.dueDate)
      ..writeByte(6)
      ..write(obj.companyName)
      ..writeByte(7)
      ..write(obj.bankName)
      ..writeByte(8)
      ..write(obj.accountNumber)
      ..writeByte(9)
      ..write(obj.accountName)
      ..writeByte(10)
      ..write(obj.modeOfPayment)
      ..writeByte(11)
      ..write(obj.session)
      ..writeByte(12)
      ..write(obj.term)
      ..writeByte(13)
      ..write(obj.studentClass)
      ..writeByte(14)
      ..write(obj.items)
      ..writeByte(15)
      ..write(obj.total)
      ..writeByte(16)
      ..write(obj.totalPaid)
      ..writeByte(17)
      ..write(obj.balance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
