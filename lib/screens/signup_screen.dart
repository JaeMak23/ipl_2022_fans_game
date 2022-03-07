import 'package:flutter/material.dart';
import 'package:ipl_2022_fans_game/screens/home_screen.dart';
import 'package:ipl_2022_fans_game/utils/color_utils.dart';

import '../custom_widgets/custom_widget.dart';
import '../shared/ui_helpers.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _retypePasswordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text('Sign Up'),
      backgroundColor: hexStringToColor('c92c95'),
      elevation: 0.0,),
      body: Container(
        width: Screen.width(context),
        height: Screen.height(context),
        decoration: customBackgroundDecoration(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 20),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),
                customTextFiled(
                  text: 'Enter user name',
                  icon: Icons.person_outline,
                  controller: _userNameTextController,
                ),
                const SizedBox(height: 20),
                customTextFiled(
                  text: 'Enter email id',
                  icon: Icons.email_outlined,
                  controller: _emailTextController,
                ),
                const SizedBox(height: 20),
                customTextFiled(
                    text: 'Enter password',
                    icon: Icons.lock_outline,
                    controller: _passwordTextController,
                    isPasswordType: true),
                const SizedBox(height: 20),
                customTextFiled(
                  text: 'Retype password',
                  icon: Icons.person_outline,
                  controller: _retypePasswordTextController,
                  isPasswordType: true,
                ),
                const SizedBox(height: 30),
                signInSignUpButton(context, false, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
