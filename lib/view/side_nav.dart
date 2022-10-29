import 'package:invoice_management/imports.dart';

class SideNav extends StatefulWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  _SideNavState createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  final drawer = DrawersController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black45,
                      offset: Offset(5.0, 5.0),
                    )
                  ], borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white),
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        maxRadius: 30.0,
                        backgroundColor: Colors.black,
                        child: TextBuilder(text: 'Logo'),
                      ),
                      title: TextBuilder(
                        text: 'Invoice Management UI',
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              ListView.builder(
                shrinkWrap: true,
                itemCount: drawer.drawer.length,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(
                          context, MaterialPageRoute(builder: (_) => MainView(initRoute: i)), (route) => false);
                    },
                    leading: Icon(
                      drawer.drawer[i].icon,
                      color: Colors.black,
                    ),
                    title: TextBuilder(
                      text: drawer.drawer[i].title,
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  );
                },
              ),
              ListTile(
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => Splash()), (route) => false);
                },
                leading: Icon(
                  Icons.power_settings_new,
                  color: Colors.black,
                ),
                title: TextBuilder(
                  text: 'Log out',
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
