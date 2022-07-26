import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:structure/resource/text_type.dart';

import '../../../resource/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidht(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Verify phone number',
                      style: TextsStyle.title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Text(
                          'Enter the 4-Digit code sent to you at +1501333982',
                          style: TextsStyle.subTitle,
                          textAlign: TextAlign.center,
                        ),
                        TweenAnimationBuilder(
                            tween: Tween(begin: 30.0, end: 0),
                            duration: Duration(seconds: 30),
                            builder: (context, num, child) {
                              final int seconds = num?.inSeconds % 60;
                              Text("${num}");
                            })
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

// class PhoneForm extends StatelessWidget {
//   const PhoneForm({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [

//         ],       
//       ),
//     )
//   }
// }