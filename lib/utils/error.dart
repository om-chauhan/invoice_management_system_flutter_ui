import 'package:invoice_management/imports.dart';

class Error extends StatelessWidget {
  final String? errorMessage;

  final VoidCallback? onRetryPressed;

  const Error({Key? key, this.errorMessage, this.onRetryPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextBuilder(
            text: errorMessage!,
            textAlign: TextAlign.center,
            fontSize: 18,
            color: Colors.black,
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            child: TextBuilder(text: 'Retry', color: Colors.black),
            onPressed: onRetryPressed,
          )
        ],
      ),
    );
  }
}
