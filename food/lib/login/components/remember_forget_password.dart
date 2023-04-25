import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class remember_forget_password extends StatefulWidget {
  const remember_forget_password({super.key});

  @override
  State<remember_forget_password> createState() =>
      _remember_forget_passwordState();
}

class _remember_forget_passwordState extends State<remember_forget_password> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              textAlign: TextAlign.left, style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
