import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      top: true,
      child: Scaffold(
        key: _scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(child: Text("By signing in you are agreeing")),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('our '),
                        Text(
                          "Term and privacy policy",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text('Register')
                      ],
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)+([\w-]$')
                                .hasMatch(value!)) {
                          return " Enter correct email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: new Icon(Icons.email),
                        labelText: 'Email Address',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: [
                        TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            icon: new Icon(Icons.lock),
                            border: UnderlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        SvgPicture.asset("images/hide.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: isChecked,
                                  onChanged: (newbool) {
                                    setState(() {
                                      isChecked = newbool;
                                    });
                                  }),
                              Text('Remember password'),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Text(' Forget password',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          child: const Text('Login'),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // final SnackBar =
                              //     SnackBar(content: Text("thanh cong"));
                              var snackBar =
                                  SnackBar(content: Text('Hello World'));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(child: Text('or connect with')),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("images/facebook1.svg"),
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset("images/linkedin1.svg"),
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset("images/instagram1.svg"),
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset("images/pinterest1.svg"),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
