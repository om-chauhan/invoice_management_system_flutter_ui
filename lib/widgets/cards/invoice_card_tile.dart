import 'package:invoice_management/imports.dart';

class InvoiceCardTile extends StatelessWidget {
  final InvoiceModel data;
  const InvoiceCardTile({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      onTap: () {
        showDialog(
          context: context,
          useSafeArea: true,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              actionsPadding: EdgeInsets.zero,
              buttonPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.all(8),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBuilder(text: 'Invoice'),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              content: InteractiveViewer(
                minScale: 0.1,
                maxScale: 1.9,
                child: Image.asset(
                  data.invoiceURL!,
                  height: size.height * 0.5,
                  width: size.width,
                ),
              ),
            );
          },
        );
      },
      title: TextBuilder(
        text: data.userName,
        fontSize: 18.0,
        color: Colors.black,
      ),
      subtitle: TextBuilder(
        text: '₹ ${data.amount}',
        fontSize: 12,
      ),
      trailing: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(data.invoiceURL!),
      ),
    );
  }
}
