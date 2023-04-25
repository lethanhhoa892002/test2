import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class login_buttom extends StatefulWidget {
  const login_buttom({super.key});

  @override
  State<login_buttom> createState() => _login_buttomState();
}

class _login_buttomState extends State<login_buttom> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // final SnackBar =
                        //     SnackBar(content: Text("thanh cong"));
                        var snackBar = SnackBar(content: Text('Hello World'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )))),
              ),
            ],
          )),
    );
  }
}
