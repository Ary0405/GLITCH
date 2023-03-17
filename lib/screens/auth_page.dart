import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:glitch/screens/login.dart';
import 'package:glitch/screens/sign_up_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogIn = true;
  @override
  Widget build(BuildContext context) => isLogIn
      ? LoginScreen(onClickedSignUp: toggle)
      : SignUpScreen(onClickedSignUp: toggle);

  void toggle() => setState(() => isLogIn = !isLogIn);
}
