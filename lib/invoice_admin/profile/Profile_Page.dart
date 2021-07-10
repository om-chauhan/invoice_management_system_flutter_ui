import 'package:flutter/material.dart';

import 'GST/GST_Home.dart';
import 'employee/Employee_Home.dart';
import 'product/Product_Home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Color> textColor = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.white,
  ];
  List<Color> bgColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.lightBlue,
  ];
  List<IconData> icons = [
    Icons.people,
    Icons.shopping_bag,
    Icons.add,
    Icons.logout
  ];
  var title = ['Employee List', 'Product List', 'Add GST Number', 'Log Out'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          switch (title[index]) {
                            case 'Employee List':
                              return EmployeeHome();

                            case 'Product List':
                              return ProductHome();
                            case 'Add GST Number':
                              return GSTHome();

                            default:
                              return EmployeeHome();
                          }
                        },
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      color: bgColor[index],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    height: 60.0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20.0,
                        ),
                        Icon(
                          icons[index],
                          size: 35.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          title[index],
                          style: TextStyle(
                            fontSize: 20.0,
                            color: textColor[index],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
