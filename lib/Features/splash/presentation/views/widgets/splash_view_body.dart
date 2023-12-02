import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(kPathLogo),
        const SizedBox(height: 4,),
        const Text('Read Free Books',textAlign: TextAlign.center,)
      ],
    );
  }
}