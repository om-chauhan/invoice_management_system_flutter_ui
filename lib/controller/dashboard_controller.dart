import 'package:invoice_management_system_flutter_ui/imports.dart';

class DashboardController {
  final dashboardList = [
    DashboardModel(
      icon: Icons.list_alt_outlined,
      title: 'Total\nProduct',
      value: '06',
    ),
    DashboardModel(
      icon: Icons.groups_outlined,
      title: 'Total\nCustomer',
      value: '52',
    ),
    DashboardModel(
      icon: Icons.payments_outlined,
      title: 'Weekly\nRevenue',
      value: '₹ 4,500',
    ),
    DashboardModel(
      icon: Icons.monetization_on,
      title: 'Total\nRevenue',
      value: '₹ 10,050',
    ),
  ];
}
