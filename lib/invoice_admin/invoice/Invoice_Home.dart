import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';

class InvoiceHome extends StatefulWidget {
  @override
  _InvoiceHomeState createState() => _InvoiceHomeState();
}

class _InvoiceHomeState extends State<InvoiceHome> {
  static const String _documentPath = 'assets/sample.pdf';

  Future<String> prepareTestPdf() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_documentPath);
    final Uint8List list = bytes.buffer.asUint8List();
    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_documentPath';
    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }

  List<String> invoiceName = ['Petey Cruiser', 'Anna Sthesia', 'Paul Molive'];
  List<double> invoicePrice = [100, 200, 300];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          invoiceName[index],
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(invoicePrice[index].toString()),
                        trailing: ClipRRect(
                          child: ClipRRect(
                            child: Image.network(
                                'https://images.ctfassets.net/7rifqg28wcbd/4IjVHnLpCT5YVfQfCTdeAW/7327997d78eadeddf9c4df3cc70ffe31/Sample_Invoice_Template_by_PayPal.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
