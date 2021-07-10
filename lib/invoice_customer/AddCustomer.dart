import 'package:flutter/material.dart';
import 'package:invoice_management/invoice_customer/AddCustomerTextFormField.dart';

class AddCustomer extends StatefulWidget {
  @override
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  // final _customerNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: 'Save',
        onPressed: () {},
        child: Icon(Icons.save),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Text(
              'Add Customer',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('BASIC INFO'),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('Logo'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Zomoto',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text('Gurgaon, Haryana, INDIA'),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_right),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddCustomerTextFormField(
                    maxLine: 1,
                    inputType: TextInputType.name,
                    custLableText: "Customer Name",
                    custHintText: 'Enter customer name',
                  ),
                  AddCustomerTextFormField(
                    maxLine: 1,
                    inputType: TextInputType.number,
                    custLableText: "Customer Phone",
                    custHintText: 'Enter Phone',
                  ),
                  AddCustomerTextFormField(
                    maxLine: 1,
                    inputType: TextInputType.emailAddress,
                    custLableText: "Customer Email ID",
                    custHintText: 'Enter Email ID',
                  ),
                  AddCustomerTextFormField(
                    maxLine: 3,
                    inputType: TextInputType.multiline,
                    custLableText: "Customer Address",
                    custHintText: 'Enter customer address',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
