import 'package:flutter/material.dart';

class AddCustomerTextFormField extends StatelessWidget {
  final String? custLableText, custHintText;
  final int? maxLine;
  final TextInputType? inputType;
  const AddCustomerTextFormField({
    Key? key,
    this.custLableText,
    this.custHintText,
    this.maxLine,
    this.inputType,
  }) : super(key: key);

  //final TextEditingController _customerNameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
      ),
      child: TextFormField(
        maxLines: maxLine,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.normal,
          ),
          labelText: custLableText,
          hintText: custHintText,
          suffixIcon: InkWell(
            onTap: () => {},
            child: Icon(Icons.clear),
          ),
        ),
      ),
    );
  }
}
