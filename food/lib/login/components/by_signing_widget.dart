import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class by_signing_widget extends StatelessWidget {
  const by_signing_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
