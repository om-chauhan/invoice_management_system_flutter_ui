import 'package:invoice_management_system_flutter_ui/imports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  const CustomTextField({Key? key, this.controller, this.label, this.prefixIcon, this.textInputType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      style: GoogleFonts.poppins(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: label,
        border: _border,
      ),
    );
  }

  InputBorder get _border {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.black),
    );
  }
}
