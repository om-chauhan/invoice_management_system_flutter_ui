import 'package:invoice_management/imports.dart';

class CreateInvoiceTemplate extends StatelessWidget {
  const CreateInvoiceTemplate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: TextBuilder(
          text: 'Create Invoice',
          color: Colors.black,
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: TextBuilder(
                text: '001',
                fontSize: 15.0,
                color: Colors.black38,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          children: [
            TextBuilder(text: '# Customer Details', fontSize: 18.0),
            const SizedBox(height: 20.0),
            AddInvoiceTextfield(
              label: 'Phone Number',
              height: 45,
              prefixIcon: Icon(
                Icons.phone,
                size: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15.0),
            AddInvoiceTextfield(
              label: 'Customer Name',
              height: 45,
              prefixIcon: Icon(
                Icons.person,
                size: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15.0),
            AddInvoiceTextfield(
              label: 'Customer GST Number',
              height: 45,
              prefixIcon: Icon(
                Icons.numbers,
                size: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20.0),
            TextBuilder(text: 'Product Details', fontSize: 20.0),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextBuilder(
                    text: 'Product Name',
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 30.0),
                Expanded(
                  child: TextBuilder(
                    text: 'Computer Parts',
                    fontSize: 12.0,
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextBuilder(
                    text: 'Product Price',
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 30.0),
                Expanded(
                  child: TextBuilder(
                    text: '20 X 30',
                    fontSize: 12.0,
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextBuilder(
                    text: 'Product Quantity',
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(width: 30.0),
                Expanded(
                  child: TextBuilder(
                    text: '20 Unit',
                    fontSize: 12.0,
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBuilder(text: 'Total', fontSize: 20.0),
                TextBuilder(text: '₹ 400.00', fontSize: 20.0),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FabCTA(
                  title: 'Add Items',
                  icon: Icons.add,
                  onTap: () {},
                ),
                FabCTA(
                  title: 'Preview',
                  icon: Icons.visibility,
                  onTap: () {},
                ),
                FabCTA(
                  title: 'Create Invoice',
                  icon: Icons.picture_as_pdf,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
