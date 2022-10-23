import 'package:invoice_management/model/invoice_model.dart';

class InvoiceController {
  final invoice = [
    InvoiceModel(
      userName: 'Petey Cruiser',
      amount: '121',
      invoiceURL: 'assets/images/invoice-template.png',
    ),
    InvoiceModel(
      userName: 'Anna Thesia',
      amount: '5475',
      invoiceURL: 'assets/images/invoice-template.png',
    ),
    InvoiceModel(
      userName: 'Paul Molive',
      amount: '846',
      invoiceURL: 'assets/images/invoice-template.png',
    )
  ];
}
