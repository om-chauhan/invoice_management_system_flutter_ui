import 'package:invoice_management/imports.dart';

class Employee extends StatelessWidget {
  final employee = EmployeeListController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: TextBuilder(text: 'Employee List', color: Colors.black),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: employee.list.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                  title: TextBuilder(
                    text: employee.list[i].title,
                    fontSize: 18.0,
                  ),
                  subtitle: TextBuilder(
                    text: 'Phone: ${employee.list[i].subTitle}',
                    fontSize: 12,
                  ),
                  trailing: CircleAvatar(
                    maxRadius: 40.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(employee.list[i].trailing!),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          employeeBottomSheet(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

void employeeBottomSheet(BuildContext context) {
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
      return Container(
        padding: MediaQuery.of(context).viewInsets,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextBuilder(text: 'Add Employee', fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
              const SizedBox(height: 20.0),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/image-placeholder.png'),
              ),
              const SizedBox(height: 20.0),
              AddInvoiceTextfield(
                label: 'Full Name',
                height: 45,
                prefixIcon: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15.0),
              AddInvoiceTextfield(
                label: 'Phone Number',
                height: 45,
                prefixIcon: Icon(
                  Icons.phone,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30.0),
              MaterialButton(
                textColor: Colors.white,
                height: 45,
                color: Colors.black,
                minWidth: 200,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: TextBuilder(
                  text: 'Add',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
