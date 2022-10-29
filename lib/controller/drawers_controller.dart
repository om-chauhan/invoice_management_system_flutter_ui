import 'package:invoice_management/imports.dart';
import 'package:invoice_management/model/drawers_model.dart';

class DrawersController {
  final drawer = [
    DrawerModel('Home', Icons.home),
    DrawerModel('Invoice', Icons.receipt_long),
    DrawerModel('Payment', Icons.account_balance),
    DrawerModel('Profile', Icons.person),
    // DrawerModel('Share App', Icons.share),
  ];
}
