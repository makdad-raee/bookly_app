import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
      child: Row(
        children: [
          Image.asset(kPathLogo,height: 18.1,),
          const Spacer(),
          IconButton(onPressed: () {
            
          }, icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 24,)),
        ],
      ),
    );
  }
}