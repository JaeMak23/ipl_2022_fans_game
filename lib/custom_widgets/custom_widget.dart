import 'package:flutter/material.dart';

import '../shared/ui_helpers.dart';
import '../utils/color_utils.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.scaleDown,
    width: 200,
    height: 200,
    color: Colors.white,
  );
}

TextField customTextFiled({
  required String text,
  required IconData icon,
  bool isPasswordType = false,
  required TextEditingController controller,
  }) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container signInSignUpButton(
  BuildContext context,
  bool isSigIn,
  Function onTap,
) {
  return Container(
    width: Screen.width(context),
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isSigIn ? 'LOG IN' : 'SIGN UP',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return (states.contains(MaterialState.pressed))
              ? Colors.black26
              : Colors.white;
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
  );
}

BoxDecoration customBackgroundDecoration(){
  return BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor('CB2B93'),
              hexStringToColor('9546C4'),
              hexStringToColor('5E61F4'),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        );
}
