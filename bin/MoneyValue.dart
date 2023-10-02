import 'dart:io';

class MoneyValue{
  late double amount;
  late String note;
  late String date;
  late String category;

  MoneyValue(this.amount, this.note, this.date, this.category);//constructor


  @override
  String toString() {
    return 'Nominal: $amount\nTanggal: $date\nKategori: $category${note != null ? '\nKeterangan: $note' : ''}';
  }

  MoneyValue.addExpense(){//method for adding the expense
    print("====================================");
    stdout.write("Pengeluaran Hari ini : ");
    amount = double.tryParse(stdin.readLineSync() ?? '')!;
    stdout.write("Tanggal Hari ini (YYYY-MM-DD): ");
    date = stdin.readLineSync()!;
    stdout.write('Kategori : ');
    category = stdin.readLineSync()!;
    stdout.write("Note (opsional) : ");
    note =stdin.readLineSync()!;
    print("====================================");

  }
}
