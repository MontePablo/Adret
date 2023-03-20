class Bill{
  var invoice_no="";
  var date="";
  var name="";
  var address="";
  var mobile="";
  var email="";
  var gstin="";
  var total="";

  List<Map<String,String>> items=[]; //itemName,quantity,price,discount,cgst,sgst,totalAmount


  Bill(this.invoice_no, this.date, this.name, this.address, this.mobile,
      this.email, this.gstin, this.total, this.items);
}