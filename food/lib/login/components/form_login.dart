import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class formLogin extends StatelessWidget {
  const formLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      
        child: Column(
      children: [
        TextFormField(
          validator: (value) {
            if (value!.isEmpty ||
                !RegExp(r'^[\w-\.]+@([\w-]+\.)+([\w-]$').hasMatch(value)) {
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
      ],
    ));
  }
}
