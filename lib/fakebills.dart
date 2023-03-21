import 'package:adret/models/bill.dart';

class FakeBills{
  static Bill bill= Bill("AS255137", "2023-01-06", "Trusted Raj Crane", "44/A Subuddhipur, Baruipur, kolkata 700144",
  "7688009332", "abcdefg@gmail.com", "22AAAAA0000A1Z5","45000",
  [ {'item':'GMB ranking','quantity':'5','price':'2000.00','cgst':'9%','sgst':'9%','total':'11800.00'},
  {'item':'GMB ranking','quantity':'5','price':'2000.00','cgst':'9%','sgst':'9%','total':'11800.00'},
  {'item':'GMB ranking','quantity':'5','price':'2000.00','cgst':'9%','sgst':'9%','total':'11800.00'},
  {'item':'GMB ranking','quantity':'5','price':'2000.00','cgst':'9%','sgst':'9%','total':'11800.00'}
  ] );
  static List<Bill> bills=List.generate(25, (index) => bill);
}