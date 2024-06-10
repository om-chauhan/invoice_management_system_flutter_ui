import 'package:invoice_management_system_flutter_ui/imports.dart';

class Commons {
  static void showError(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: TextBuilder(text: message),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        actions: <Widget>[
          TextButton(
            child: const TextBuilder(text: "Ok"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
