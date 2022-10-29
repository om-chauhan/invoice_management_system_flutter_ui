import 'package:invoice_management/imports.dart';

class GSTHome extends StatefulWidget {
  @override
  _GSTHomeState createState() => _GSTHomeState();
}

class _GSTHomeState extends State<GSTHome> {
  final gst = GSTListController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: TextBuilder(text: 'GST Number List', color: Colors.black),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          displayBottomSheet(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: gst.list.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: TextBuilder(
                    text: gst.list[i].title,
                    fontSize: 18.0,
                  ),
                  subtitle: TextBuilder(
                    text: gst.list[i].subTitle,
                    fontSize: 12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void displayBottomSheet(BuildContext context) {
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    enableDrag: true,
    isDismissible: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
    ),
    context: context,
    builder: (ctx) {
      return SafeArea(
        child: Container(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextBuilder(text: 'Add GST', fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
                const SizedBox(height: 20.0),
                AddInvoiceTextfield(
                  label: 'GST Number',
                  height: 45,
                  prefixIcon: Icon(
                    Icons.receipt_long,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30.0),
                MaterialButton(
                  textColor: Colors.white,
                  height: 45,
                  color: Colors.black,
                  minWidth: 200,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: TextBuilder(
                    text: 'Add',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
