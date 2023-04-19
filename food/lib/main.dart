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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                    height: 5,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Text('Register')
                    ],
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
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
                          icon: new Icon(Icons.password),
                          border: UnderlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                      Text('Show')
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (newbool) {
                              setState(() {
                                isChecked = newbool;
                              });
                            }),
                        Text('Remember password'),
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
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(child: Text('or connect with')),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Expanded(
                        //   child: ElevatedButton.icon(
                        //       onPressed: () {},
                        //       icon: Icon(Icons.facebook),
                        //       label: Text(""),
                        //       style: ButtonStyle(
                        //           shape: MaterialStateProperty.all<
                        //                   RoundedRectangleBorder>(
                        //               RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(100.100),
                        //       )))),
                        // ),
                        // Expanded(
                        //   child: ElevatedButton.icon(
                        //       onPressed: () {},
                        //       icon: Icon(Icons.facebook),
                        //       label: Text(""),
                        //       style: ButtonStyle(
                        //           shape: MaterialStateProperty.all<
                        //                   RoundedRectangleBorder>(
                        //               RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(100.100),
                        //       )))),
                        // ),
                        // Expanded(
                        //   child: ElevatedButton.icon(
                        //       onPressed: () {},
                        //       icon: Icon(Icons.facebook),
                        //       label: Text(""),
                        //       style: ButtonStyle(
                        //           shape: MaterialStateProperty.all<
                        //                   RoundedRectangleBorder>(
                        //               RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(100.100),
                        //       )))),
                        // ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'images/image11.svg',
                    // height: 50,
                    // width: 50,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
