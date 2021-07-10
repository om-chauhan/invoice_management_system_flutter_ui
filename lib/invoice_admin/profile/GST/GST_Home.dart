import 'package:flutter/material.dart';

class GSTHome extends StatefulWidget {
  @override
  _GSTHomeState createState() => _GSTHomeState();
}

class _GSTHomeState extends State<GSTHome> {
  List<String> gstTitle = ['GST Number 1', 'GST Number 2', 'GST Number 3'];
  List<String> gstNumberdata = [
    '69BGHY3256M5VH',
    '69BGHY4125M5VH',
    '69BGHY9856M5VH'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'GST Number List',
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displayBottomSheet(context);
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: gstNumberdata.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListTile(
                      title: Text(
                        gstTitle[index],
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: Text(gstNumberdata[index]),
                    ),
                  ),
                );
              },
            ),
            // Bottom Sheet

            // Bottom Sheet
          ],
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
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            // color: Colors.black12,
            height: MediaQuery.of(context).size.height * 0.30,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Add GST',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'GST Number',
                      prefixIcon: Icon(
                        Icons.receipt_long,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
