import 'package:invoice_management/imports.dart';

class AddInvoiceTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final double? height;
  final Widget? prefixIcon;
  const AddInvoiceTextfield({Key? key, this.controller, this.label, this.height = 40, this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.lato(color: Colors.black),
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            labelText: label,
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 0.5))),
      ),
    );
  }
}
