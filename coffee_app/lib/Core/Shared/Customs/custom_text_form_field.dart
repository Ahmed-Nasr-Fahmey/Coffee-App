import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.validator,
    this.onChanged, required this.mywidth,
  });
  String? Function(String?)? validator;
  final Function(String)? onChanged;
  double? mywidth;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.mywidth,
      child: TextFormField(
        
        onChanged: widget.onChanged,
        style: GoogleFonts.montserrat(
          color: ConstColors.primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.12,
        ),
        cursorColor: ConstColors.primaryColor,
        decoration: const InputDecoration(
          
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: ConstColors.primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstColors.primaryColor,
              width: 1,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstColors.primaryColor,
              width: 1,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.only(
              right: 24,
              top: 12,
            ),
          
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}
