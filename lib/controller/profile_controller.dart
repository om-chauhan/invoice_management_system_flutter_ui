import 'package:invoice_management/imports.dart';

class ProfileController {
  final list = [
    ProfileModel(title: 'Employee List', icon: Icons.people, bgColor: Colors.white, textColor: Colors.black),
    ProfileModel(title: 'Product List', icon: Icons.list, bgColor: Colors.white, textColor: Colors.black),
    ProfileModel(title: 'Add GST Number', icon: Icons.numbers, bgColor: Colors.white, textColor: Colors.black),
    ProfileModel(title: 'Log out', icon: Icons.logout, bgColor: Colors.black, textColor: Colors.white),
  ];
}
