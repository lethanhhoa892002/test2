import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/login/components/form_login.dart';
import 'package:food/login/components/login_buttom.dart';
import 'package:food/login/components/loginwith.dart';
import 'package:food/login/components/remember_forget_password.dart';
import 'package:food/login/components/test.dart';

import 'components/button_header.dart';
import 'components/by_signing_widget.dart';
import 'components/login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      right: false,
      left: false,
      bottom: false,
      child: Scaffold(
        body: buildLoginScreen(),
      ),
    );
  }

  Widget buildLoginScreen() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [buildHeader(), buildContent(), buildFooter()],
        ),
      ),
    );
  }

  Widget buildFooter() {
    return Column(
      children: [
        Center(child: Text('or connect with')),
        loginwith(),
      ],
    );
  }

  Widget buildContent() {
    return Column(
      children: [
        formLogin(),
        remember_forget_password(),
        login_buttom(),
      ],
    );
  }

  Widget buildHeader() {
    return Column(
      children: [
        const SizedBox(height: 50),
        const LoginWidget(),
        const by_signing_widget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonHeaderWidget(
              name: "Login",
              isLogin: isLogin,
              onTap: () {
                isLogin = !isLogin;
                setState(() {});
              },
            ),
            const SizedBox(
              width: 25,
              height: 50,
            ),
            ButtonHeaderWidget(
              name: "Register",
              isLogin: !isLogin,
              onTap: () {
                isLogin = !isLogin;
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}
