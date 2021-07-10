import 'package:flutter/material.dart';

class SideNav extends StatefulWidget {
  const SideNav({
    Key? key,
  }) : super(key: key);

  @override
  _SideNavState createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  List<IconData> icon = [
    Icons.home,
    Icons.receipt_long,
    Icons.person,
    Icons.share,
  ];
  var title = ['Home', 'Invoice', 'Profile', 'Share App'];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20.0,
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(
                          maxRadius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://www.commhealth.org/wp-content/uploads/cropped-placeholder.jpg'),
                        ),
                        title: Text(
                          'Stellar Invoice',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: title.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 60.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {},
                          child: ListTile(
                            leading: Icon(icon[index]),
                            title: Text(
                              title[index],
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 60.0,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(Icons.power_settings_new),
                        title: Text(
                          'Log Out',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Commons.logout(context);
