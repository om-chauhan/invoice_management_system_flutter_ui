import 'package:invoice_management_system_flutter_ui/imports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

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
                      const Expanded(
                        flex: 3,
                        child: SizedBox(),
                      ),
                      const TextBuilder(
                        text: "Welcome",
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(height: 50),
                      _emailPasswordWidget(),
                      const SizedBox(height: 20),
                      _loginButton(),
                      _forgotPassword(),
                      const SizedBox(height: 20),
                      //_skipButton(),
                      _divider(),
                      const Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _createAccountLabel(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return GestureDetector(
      onTap: () async {},
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
        child: const TextBuilder(text: 'Login', fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.centerRight,
        child: const TextBuilder(text: 'Forgot Password ?', fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Row(
        children: <Widget>[
          SizedBox(width: 20),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const TextBuilder(text: 'Don\'t have an account ?', fontSize: 13, fontWeight: FontWeight.w600),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
            },
            child: const TextBuilder(text: 'Register', color: AppColors.mainAppFontColor, fontSize: 13, fontWeight: FontWeight.w600),
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
      style: GoogleFonts.poppins(fontSize: 20.0),
      decoration: const InputDecoration(prefixIcon: Icon(Icons.email), labelText: "Email", border: OutlineInputBorder()),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      key: const Key("userPassword"),
      controller: _userPassword,
      obscureText: _obscureText,
      validator: (value) => (value!.isEmpty) ? "Please Enter Password" : null,
      style: GoogleFonts.poppins(fontSize: 20.0),
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
