import 'package:flutter/material.dart';

class CreateInvoice extends StatefulWidget {
  @override
  _CreateInvoiceState createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Text(
              'Create Invoice',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InvoiceTextField(
                  text: '#Invoice',
                  fontSize: 20.0,
                ),
                InvoiceTextField(
                  text: '001',
                  fontSize: 20.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Customer Details',
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: InvoiceTextField(
                      text: 'Customer Name',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Enter Name'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: InvoiceTextField(
                      text: 'Phone Number',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Enter Phone'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: InvoiceTextField(
                      text: 'Customer GSTIN Number',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Enter GSTIN'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Product Details',
              style: TextStyle(fontSize: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: InvoiceTextField(
                      text: 'Product Name',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: InvoiceTextField(
                      text: 'Product Price',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: InvoiceTextField(
                      text: 'Product Quantity',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InvoiceTextField(
                  text: 'Total',
                  fontSize: 20.0,
                ),
                InvoiceTextField(
                  text: '₹ 400.00',
                  fontSize: 20.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text('Add Items'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.visibility,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text('Preview'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.picture_as_pdf,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text('Create Invoice'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InvoiceTextField extends StatelessWidget {
  final String? text;
  final double? fontSize;

  const InvoiceTextField({
    Key? key,
    this.text,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
