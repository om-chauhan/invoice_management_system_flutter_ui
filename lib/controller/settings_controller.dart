import 'package:invoice_management_system_flutter_ui/imports.dart';

class SettingsController {
  final list = [
    SettingsModel(title: 'Employee List', icon: Icons.people, bgColor: Colors.white, textColor: Colors.black),
    SettingsModel(title: 'Product List', icon: Icons.list, bgColor: Colors.white, textColor: Colors.black),
    SettingsModel(title: 'Add GST Number', icon: Icons.numbers, bgColor: Colors.white, textColor: Colors.black),
    SettingsModel(title: 'Log out', icon: Icons.logout, bgColor: Colors.black, textColor: Colors.white),
  ];
}
