import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginwith extends StatelessWidget {
  const loginwith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
