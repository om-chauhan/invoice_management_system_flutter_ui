import 'package:device_preview/device_preview.dart';
import 'package:invoice_management/imports.dart';

void main() {
  runApp(
    kIsWeb ? DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp()) : MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invoice Management UI',
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: Splash(),
    );
  }
}
