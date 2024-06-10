import 'package:invoice_management_system_flutter_ui/imports.dart';

class Employee extends StatelessWidget {
  final employee = EmployeeListController();
  Employee({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const TextBuilder(text: 'Employee List', color: Colors.black),
      ),
      body: SafeArea(
        child: Consumer<ProviderController>(
          builder: (context, value, child) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: employee.list.length,
              itemBuilder: (BuildContext context, int i) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
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
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          employeeBottomSheet(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

void employeeBottomSheet(BuildContext context) {
  TextEditingController fullName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
    enableDrag: true,
    isDismissible: true,
    shape: const RoundedRectangleBorder(
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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const TextBuilder(text: 'Add Employee', fontSize: 25.0, fontWeight: FontWeight.w700, color: Colors.black),
              const SizedBox(height: 20.0),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(ImageAssets.imagePlaceholder),
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                label: 'Full Name',
                controller: fullName,
                prefixIcon: const Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15.0),
              CustomTextField(
                label: 'Phone Number',
                controller: phoneNumber,
                textInputType: TextInputType.number,
                prefixIcon: const Icon(
                  Icons.phone,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30.0),
              MaterialButton(
                height: 50,
                textColor: Colors.white,
                color: Colors.black,
                minWidth: double.infinity,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                onPressed: () {
                  Navigator.pop(context);
                  EmployeeModel employee = EmployeeModel(
                    title: 'Employee Name',
                    subTitle: 'Employee Phone Number',
                    trailing: ImageAssets.imagePlaceholder,
                  );
                  Provider.of<ProviderController>(context, listen: false).addEmployee(employee);
                },
                child: TextBuilder(
                  text: 'Add'.toUpperCase(),
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
