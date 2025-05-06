import 'package:flutter/material.dart';

import '../../../themes/app_colors.dart';
import '../../../utils/dimensions.dart';

class SearchPokemonField extends StatelessWidget {
  const SearchPokemonField({
    required this.controller,
    this.hintText = "Search Pokémon",
    this.onChanged,
    this.prefixIcon,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  controller.clear();
                  if (onChanged != null) {
                    onChanged!("");
                  }
                },
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius20),
          borderSide: const BorderSide(color: AppColors.blueGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius20),
          borderSide: const BorderSide(color: AppColors.blueGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius20),
          borderSide: const BorderSide(color: AppColors.blueGrey),
        ),
      ),
    );
  }
}
