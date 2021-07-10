import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var faceImg = [
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/six.jpg',
    'assets/images/seven.jpg',
    'assets/images/eight.jpg',
    'assets/images/nine.jpg',
    'assets/images/ten.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/six.jpg',
    'assets/images/seven.jpg',
    'assets/images/eight.jpg',
    'assets/images/nine.jpg',
    'assets/images/ten.jpg'
  ];
  var name = [
    'Mario Speedwagon',
    'Petey Cruiser',
    'Anna Sthesia',
    'Paul Molive',
    'Anna Mull',
    'Gail Forcewind',
    'Paige Turner',
    'Bob Frapples',
    'Walter Melon',
    'Nick R. Bocker',
    'Mario Speedwagon',
    'Petey Cruiser',
    'Anna Sthesia',
    'Paul Molive',
    'Anna Mull',
    'Gail Forcewind',
    'Paige Turner',
    'Bob Frapples',
    'Walter Melon',
    'Nick R. Bocker'
  ];
  var date = [
    '1/12/2020',
    '2/12/2020',
    '3/12/2020',
    '4/12/2020',
    '5/12/2020',
    '6/12/2020',
    '7/12/2020',
    '8/12/2020',
    '9/12/2020',
    '1/12/2020',
    '1/12/2020',
    '2/12/2020',
    '3/12/2020',
    '4/12/2020',
    '5/12/2020',
    '6/12/2020',
    '7/12/2020',
    '8/12/2020',
    '9/12/2020',
    '1/12/2020'
  ];
  var amount = [
    '₹ 100',
    '₹ 400',
    '₹ 1100',
    '₹ 250',
    '₹ 600',
    '₹ 540',
    '₹ 300',
    '₹ 1000',
    '₹ 350',
    '₹ 200',
    '₹ 100',
    '₹ 400',
    '₹ 1100',
    '₹ 250',
    '₹ 600',
    '₹ 540',
    '₹ 300',
    '₹ 1000',
    '₹ 350',
    '₹ 200'
  ];
  List<IconData> dashIcon = [
    Icons.monetization_on,
    Icons.monetization_on,
    Icons.monetization_on,
    Icons.monetization_on
  ];
  var dashName = [
    'Total\nProduct',
    'Total\nCustomer',
    'Weekly\nRevanue',
    'Total\nRevanue',
  ];
  List<Color> dashColor = [
    Color(0xff1AB0B0),
    Color(0xffFF7544),
    Color(0xffFA5A7D),
    Color(0xff8676FE)
  ];
  var dashValue = ['06', '52', '₹ 4,500', '₹ 10,050'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 350.0,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0xffF1F4F8),
                        offset: Offset(10, 10),
                      )
                    ],
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30.0,
                      ),
                    ),
                  ),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: dashColor[index],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    dashIcon[index],
                                    color: Colors.white,
                                    size: 45.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        dashValue[index],
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        dashName[index],
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Payment History',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(
                        5.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 5.0,
                            bottom: 5.0,
                          ),
                          child: ListTile(
                            onTap: () {},
                            leading: CircleAvatar(
                              maxRadius: 30.0,
                              backgroundImage: AssetImage(
                                faceImg[index],
                              ),
                            ),
                            title: Text(
                              name[index],
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            subtitle: Text(
                              date[index],
                            ),
                            trailing: Text(
                              amount[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
