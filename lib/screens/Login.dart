import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tribal_trove/seller/main_seller.dart';
import 'home_screen.dart';
import 'Signup.dart';
import 'ForgotPassword.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController numberController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  String phone_number = '';
  String password = '';
  bool ishiddenPassword = true;
  String _selectedCategory = 'Seller';
  final _formKey = GlobalKey<FormState>();
  final _formKeyOTP = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var isLoading = false;
  var isResend = false;
  var isLoginScreen = true;
  var isHomeScreen = false;
  var verificationCode = '';
  var isOtpScreen = false;
  var isRegister = true;
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = const TextStyle(
        color: Colors.black, fontSize: 14, fontFamily: "Playfair Display");
    TextStyle linkStyle = const TextStyle(
        color: Colors.blue, fontSize: 14, fontFamily: "Playfair Display");
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xffFEEBCA),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sign in',
                  style: TextStyle(
                    fontFamily: 'Italianno',
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                    text: TextSpan(
                  style: defaultStyle,
                  children: [
                    const TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        fontFamily: 'tuffy',
                      ),
                    ),
                    TextSpan(
                      text: "  Register",
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()),
                              (route) => true);
                        },
                    ),
                  ],
                )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextFormField(
                      controller: numberController,
                      validator: (val) => (val!.length > 10 || val!.length < 10)
                          ? 'Phone Number should be 10 digits long'
                          : null,
                      onChanged: (val) {
                        setState(() => phone_number = val);
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                            fontFamily: 'tuffy',
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14)),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (val) => (val!.length < 6 || val!.length > 18)
                          ? 'Password should be 6-18 characters long'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                      obscureText: ishiddenPassword,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontFamily: 'tuffy',
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14)),
                    )),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(
                  style: defaultStyle,
                  children: [
                    TextSpan(
                      text: "Forgot Password?",
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ForgotPassword()),
                              (route) => true);
                        },
                    ),
                  ],
                )),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Do you want to buy or sell ?',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 'Seller',
                      groupValue: _selectedCategory,
                      onChanged: (value) {
                        setState(() {
                          _selectedCategory = value!;
                        });
                      },
                    ),
                    Text('Seller'),
                    Radio(
                      value: 'Buyer',
                      groupValue: _selectedCategory,
                      onChanged: (value) {
                        setState(() {
                          _selectedCategory = value!;
                        });
                      },
                    ),
                    Text('Buyer'),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_selectedCategory == 'Buyer') {
                        // Do something if Option 1 was selected.
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                            (route) => true);
                      } else if (_selectedCategory == 'Seller') {
                        // Do something if Option 2 was selected.
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreenSeller()),
                            (route) => true);
                      } else {
                        // Do something if no option was selected.
                        print('No option was selected.');
                      }

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                          (route) => true);
                    }, //{
                    // Navigator.pushAndRemoveUntil(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HomeScreen()),
                    //         (route) => true);
                    // },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(157, 81, 1, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "tuffy",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
