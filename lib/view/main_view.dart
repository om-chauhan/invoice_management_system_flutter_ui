import 'package:invoice_management_system_flutter_ui/imports.dart';

class MainView extends StatefulWidget {
  final int initRoute;

  const MainView({Key? key, required this.initRoute}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  List<Widget> tabs = const [Home(), Invoice(), Payment(), Settings()];
  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initRoute;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const TextBuilder(
          text: 'Invoice Management UI',
          color: Colors.black,
        ),
      ),
      drawer: const SideNav(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.toc), label: 'Invoice'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Payment'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
