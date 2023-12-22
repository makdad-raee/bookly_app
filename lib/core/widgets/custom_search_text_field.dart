import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, this.onChanged});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          enabledBorder: buildOutlininputBorder(),
          focusedBorder: buildOutlininputBorder(),
          hintText: 'Search',
          suffixIcon: Opacity(
            opacity: 0.8,
            child: IconButton(
              onPressed: () {},
              
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ),
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlininputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
