

import 'package:adret/models/bill.dart';
import 'package:flutter/material.dart';

class BillView extends StatelessWidget{
  Bill bill;
  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        title: Text(bill.name),
        subtitle: Text(bill.total + "Rupees"),
        leading: Text(bill.date),
        trailing: ElevatedButton(
          child:Icon(Icons.highlight_remove,) ,
          onPressed: () {
            print(Text(bill.name));
          },

        ),
      ),
    );
    throw UnimplementedError();
  }

  BillView(@required this.bill){
  }

}