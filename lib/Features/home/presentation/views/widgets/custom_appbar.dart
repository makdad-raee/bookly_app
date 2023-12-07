import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        children: [
          Image.asset(kPathLogo,height: 18.1,),
          const Spacer(),
          IconButton(onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          }, icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 22,)),
        ],
      ),
    );
  }
}