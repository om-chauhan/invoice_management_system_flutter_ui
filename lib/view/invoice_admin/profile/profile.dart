import 'package:invoice_management/imports.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final profile = ProfileController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: profile.list.length,
            itemBuilder: (context, i) {
              return ProfileButtonTile(
                data: profile.list[i],
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
                            return GSTHome();
                          default:
                            return Splash();
                        }
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
