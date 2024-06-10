import 'package:invoice_management_system_flutter_ui/imports.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  TextStyle style = GoogleFonts.poppins(fontSize: 20.0);
  TextEditingController _userEmail = TextEditingController();
  TextEditingController _userPassword = TextEditingController();
  final _formPageKey = GlobalKey<FormState>();
  final _pageKey = GlobalKey<ScaffoldState>();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _userEmail = TextEditingController(text: "");
    _userPassword = TextEditingController(text: "");
  }

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void showErrorScreen(BuildContext context, String message) {
    setState(() => isLoading = false);

    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: TextBuilder(text: message),
              backgroundColor: AppColors.popupItemBackColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              actions: <Widget>[
                TextButton(
                  child: const TextBuilder(text: "Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _pageKey,
        body: Form(
            key: _formPageKey,
            child: SingleChildScrollView(
                child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Expanded(flex: 3, child: SizedBox()),
                        const TextBuilder(
                          text: "Welcome",
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(height: 50),
                        _emailPasswordWidget(),
                        const SizedBox(height: 20),
                        _registerButton(),
                        const Expanded(flex: 2, child: SizedBox())
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: _loginAccountLabel(),
                  ),
                  Positioned(top: 40, left: 0, child: _backButton()),
                ],
              ),
            ))));
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: const Icon(Icons.keyboard_arrow_left, color: Colors.white),
            ),
            const TextBuilder(text: 'Back', fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white)
          ],
        ),
      ),
    );
  }

  Widget _registerButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[BoxShadow(color: Colors.grey.shade200, offset: const Offset(2, 4), blurRadius: 5, spreadRadius: 2)],
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [AppColors.gradientBackgroundColorStart, AppColors.gradientBackgroundColorEnd],
          ),
        ),
        child: const TextBuilder(text: 'Register Now', fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const TextBuilder(text: 'Already have an account ?', fontSize: 13, fontWeight: FontWeight.w600),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: const TextBuilder(text: 'Login', color: AppColors.mainAppFontColor, fontSize: 13, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      key: const Key("userEmail"),
      controller: _userEmail,
      validator: (value) => (value!.isEmpty) ? "Please Enter Email" : null,
      style: style,
      decoration: const InputDecoration(prefixIcon: Icon(Icons.email), labelText: "Email", border: OutlineInputBorder()),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      key: const Key("userPassword"),
      controller: _userPassword,
      obscureText: _obscureText,
      validator: (value) => (value!.isEmpty) ? "Please Enter Password" : null,
      style: style,
      decoration: const InputDecoration(prefixIcon: Icon(Icons.lock), labelText: "Password", border: OutlineInputBorder()),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _emailField(),
        const SizedBox(height: 10),
        _passwordField(),
        TextButton(onPressed: _togglePassword, child: TextBuilder(text: _obscureText ? "Show" : "Hide")),
      ],
    );
  }
}
