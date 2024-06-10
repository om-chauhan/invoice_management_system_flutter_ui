import 'package:invoice_management_system_flutter_ui/imports.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  final invoice = InvoiceController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          shrinkWrap: true,
          itemCount: invoice.invoice.length,
          itemBuilder: (BuildContext context, int i) {
            return InvoiceCardTile(
              data: invoice.invoice[i],
            );
          },
        ),
      ),
    );
  }
}
