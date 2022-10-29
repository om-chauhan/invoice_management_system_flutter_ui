import 'package:invoice_management/imports.dart';

class ProductHome extends StatelessWidget {
  final product = ProductListController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: TextBuilder(text: 'Product List', color: Colors.black),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          productBottomSheet(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: product.list.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: TextBuilder(
                    text: product.list[i].title,
                    fontSize: 18.0,
                  ),
                  subtitle: TextBuilder(
                    text: 'Quantity: ${product.list[i].subTitle}',
                    fontSize: 12,
                  ),
                  trailing: CircleAvatar(
                    maxRadius: 40.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(product.list[i].trailing!),
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

void productBottomSheet(BuildContext context) {
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
                TextBuilder(text: 'Add Product', fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
                const SizedBox(height: 20.0),
                AddInvoiceTextfield(
                  label: 'Product Name',
                  height: 45,
                  prefixIcon: Icon(
                    Icons.add_shopping_cart,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15.0),
                AddInvoiceTextfield(
                  label: 'Price',
                  height: 45,
                  prefixIcon: Icon(
                    Icons.attach_money,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15.0),
                AddInvoiceTextfield(
                  label: 'Quantity',
                  height: 45,
                  prefixIcon: Icon(
                    Icons.leaderboard,
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
