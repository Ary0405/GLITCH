import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

import '../main.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onClickedSignUp;
  const SignUpScreen({super.key, required this.onClickedSignUp});
  static const routeName = 'sign-up-screen';
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  List<String> crops = [
    'Tomato',
    'Cabbage',
    'Potatoes',
    'Onions',
    'Ladyfinger',
    'Carrots'
  ];
  List<String> selectedCrops = [];

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Sign Up",
          style: TextStyle(
              color: Colors.black,
              fontSize: width * .06,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xffF2F9F2),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.06),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  contentPadding: EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: height * .025,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: height * .025,
              ),
              TextField(
                controller: _areaController,
                decoration: const InputDecoration(
                    labelText: 'Area',
                    contentPadding: EdgeInsets.all(8),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              SizedBox(
                height: height * .025,
              ),
              TextField(
                controller: _contactController,
                decoration: const InputDecoration(
                  labelText: 'Contact',
                  contentPadding: const EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: height * .025,
              ),
              DropDownMultiSelect(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                options: crops,
                selectedValues: selectedCrops,
                onChanged: (value) {
                  print('selected fruit $value');
                  setState(() {
                    selectedCrops = value;
                  });
                  print('you have selected $selectedCrops fruits.');
                },
                whenEmpty: 'Select the crops you sell',
              ),
              SizedBox(
                height: height * .025,
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.all(8),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              SizedBox(
                height: height * .035,
              ),
              SizedBox(
                width: width * .5,
                height: height * .05,
                child: ElevatedButton(
                  onPressed: () async {
                    signUp();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC7D458),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: width * .05,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffb064514)),
                  ),
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: width * .04,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  text: 'No account? ',
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSignUp,
                      text: 'Log In',
                      style: const TextStyle(
                        color: Color(0xff22963C),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      final details = <String, dynamic>{
        "name": _nameController.text,
        "email": _emailController.text.trim(),
        "area": _areaController.text,
        "contact": _contactController.text,
        "crops": selectedCrops,
      };
      await FirebaseFirestore.instance
          .collection('users')
          .doc(_emailController.text.trim())
          .set(details);
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
