import 'package:invoice_management_system_flutter_ui/imports.dart';

class InvoiceController {
  final invoice = [
    InvoiceModel(
      userName: 'Petey Cruiser',
      amount: '121',
      invoiceURL: ImageAssets.invoiceTemplate,
    ),
    InvoiceModel(
      userName: 'Anna Thesia',
      amount: '5475',
      invoiceURL: ImageAssets.invoiceTemplate,
    ),
    InvoiceModel(
      userName: 'Paul Molive',
      amount: '846',
      invoiceURL: ImageAssets.invoiceTemplate,
    )
  ];
}
