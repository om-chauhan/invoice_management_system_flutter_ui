import 'package:flutter/material.dart';

class EmployeeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Employee List',
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          displayBottomSheet(context);
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListTile(
                      title: Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: Text('Phone: +91 124536987'),
                      trailing: CircleAvatar(
                        maxRadius: 40.0,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1456327102063-fb5054efe647?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=f05c14dd4db49f08a789e6449604c490'),
                      ),
                    ),
                  ),
                );
              },
            ),
            // Bottom Sheet

            // Bottom Sheet
          ],
        ),
      ),
    );
  }
}

void displayBottomSheet(BuildContext context) {
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    enableDrag: true,
    isDismissible: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
    ),
    context: context,
    builder: (ctx) {
      return SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            // color: Colors.black12,
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Add Employee',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue),
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        50.0,
                      ),
                    ),
                    child: Image.network(
                      'https://www.commhealth.org/wp-content/uploads/cropped-placeholder.jpg',
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                      prefixIcon: Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone',
                      prefixIcon: Icon(
                        Icons.phone,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
