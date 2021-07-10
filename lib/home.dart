import 'package:flutter/material.dart';
import 'package:invoice_management/invoice_admin/create_invoice/Create_Invoice_Page.dart';
import 'package:invoice_management/invoice_admin/invoice/Invoice_Home.dart';
import 'package:invoice_management/view/SideNav.dart';
import 'package:invoice_management/view/home/Home_Page.dart';

import 'invoice_admin/expense/Expense_Home.dart';
import 'invoice_admin/profile/Profile_Page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    HomePage(),
    InvoiceHome(),
    CreateInvoice(),
    ExpenseHome(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Invoice Management System',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      drawer: Drawer(child: SideNav()),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.toc),
            label: 'Invoice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Create Invoice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Expense',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
