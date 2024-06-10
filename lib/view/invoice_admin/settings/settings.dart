import 'package:invoice_management_system_flutter_ui/imports.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final settings = SettingsController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: settings.list.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, i) {
            return SettingsCard(
              data: settings.list[i],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      switch (i) {
                        case 0:
                          return Employee();
                        case 1:
                          return ProductHome();
                        case 2:
                          return const GSTHome();
                        default:
                          return const Splash();
                      }
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
