import 'package:invoice_management_system_flutter_ui/imports.dart';

class ProviderController extends ChangeNotifier {
  List<EmployeeModel> employees = [];

  addEmployee(EmployeeModel employee) {
    employees.add(employee);
    notifyListeners();
  }
}
