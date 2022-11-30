import 'package:bakir_ecommerce/app/widgets/custom_button.dart';
import 'package:bakir_ecommerce/app/widgets/custom_text.dart';
import 'package:bakir_ecommerce/components/declarations.dart';
import 'package:flutter/material.dart';

enum AuthEnum  {
  signup,
  signin
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  AuthEnum _auth = AuthEnum.signup;
  final GlobalKey singnupKey = GlobalKey<FormState>();
  final GlobalKey singninKey = GlobalKey<FormState>();

  final TextEditingController _emailText = TextEditingController();
  final TextEditingController _passwordText = TextEditingController();
  final TextEditingController _nameText = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailText.dispose();
    _passwordText.dispose();
    _nameText.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Declarations.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:  [
              const Text("Welocme To Bakir eCommerce",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 10,),
              ListTile(
                tileColor: _auth == AuthEnum.signup ? Declarations.backgroundColor : Declarations.greyBackgroundColor,
                title: const Text("New Customer"),
                leading: Radio(
                  activeColor: Declarations.secondaryColor,
                  value: AuthEnum.signup,
                  groupValue: _auth,
                  onChanged: (AuthEnum? value) {
                      setState(() {
                        _auth = value ?? AuthEnum.signup;
                      });
                  },
                ),
              ),
              if (_auth == AuthEnum.signup)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Declarations.backgroundColor,
                  child: Form(
                    key: singninKey,
                    child: Column(
                      children: [
                        CustomText(controller: _nameText, hintText: "User Name"),
                        const SizedBox(height: 10,),
                        CustomText(controller: _emailText, hintText: "Email"),
                        const SizedBox(height: 10,),
                        CustomText(controller: _passwordText, hintText: "Password"),
                        const SizedBox(height: 10,),
                        CustomButton(onTap: () {

                        }, text: "Sign Up")
                      ],
                    ),
                  ),
                ),
              ListTile(
                tileColor: _auth == AuthEnum.signin ? Declarations.backgroundColor : Declarations.greyBackgroundColor,
                title: const Text("New Customer"),
                leading: Radio(
                  activeColor: Declarations.secondaryColor,
                  value: AuthEnum.signin,
                  groupValue: _auth,
                  onChanged: (AuthEnum? value) {
                    setState(() {
                      _auth = value ?? AuthEnum.signin;
                    });
                  },
                ),
              ),
              if (_auth == AuthEnum.signin)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Declarations.backgroundColor,
                  child: Form(
                    key: singninKey,
                    child: Column(
                      children: [
                        CustomText(controller: _emailText, hintText: "Email"),
                        const SizedBox(height: 10,),
                        CustomText(controller: _passwordText, hintText: "Password"),
                        const SizedBox(height: 10,),
                        CustomButton(onTap: () {

                        }, text: "Sign In")
                      ],
                    ),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
