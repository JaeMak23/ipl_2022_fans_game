import 'package:flutter/material.dart';

import '../../custom_widgets/custom_widget.dart';
import '../../shared/ui_helpers.dart';

class UserNamePage extends StatefulWidget {
  const UserNamePage({Key? key}) : super(key: key);

  @override
  State<UserNamePage> createState() => _UserNamePageState();
}

class _UserNamePageState extends State<UserNamePage> {
  final TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
