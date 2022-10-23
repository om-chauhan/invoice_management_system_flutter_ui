import 'package:invoice_management/imports.dart';

class AddCustomerField extends StatelessWidget {
  final String? customerLabelText, customerHintText;
  final int? maxLine;
  final TextInputType? inputType;
  const AddCustomerField({
    Key? key,
    this.customerLabelText,
    this.customerHintText,
    this.maxLine,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: TextFormField(
        maxLines: maxLine,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintStyle: GoogleFonts.lato(
            fontSize: 15.0,
            fontWeight: FontWeight.normal,
          ),
          labelText: customerLabelText,
          hintText: customerHintText,
          suffixIcon: InkWell(
            onTap: () => {},
            child: Icon(Icons.clear),
          ),
        ),
      ),
    );
  }
}
