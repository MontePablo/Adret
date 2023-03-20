import 'package:adret/fakebills.dart';
import 'package:adret/viewHolders/billView.dart';
import 'package:flutter/material.dart';
class Bills extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(padding: EdgeInsets.all(16.0),
        child: ListView.builder(itemBuilder: (context,index){
          return BillView(FakeBills.bills[index]);
        }),
        
      ),
    );
  }
}