import 'package:flutter/material.dart';
import 'package:ipl_2022_fans_game/screens/signup_screen.dart';
import '../custom_widgets/custom_widget.dart';
import '../shared/ui_helpers.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _emailTextController=TextEditingController();
  final _passwordTextController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        width: Screen.width(context),
        height: Screen.height(context),
        decoration: customBackgroundDecoration(),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20,
              Screen.height(context) * 0.2,
              20,
              20,
            ),
            child: Column(
              children: <Widget>[
                logoWidget('assets/images/ipl_logo.png'),
                const SizedBox(height: 30),
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
                  isPasswordType: true
                ),
               const SizedBox(height: 30),
               signInSignUpButton(context, true, (){}),
               signUpOption(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption(){
  return Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Text('Dont have account?',
    style: TextStyle(color: Colors.white70),),
    GestureDetector(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
    },
    child: const Text(
      ' Sign Up',
      style: TextStyle(color: Colors.white,
      fontWeight: FontWeight.bold,),
    ),)
  ],
  );
  }
}


