import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';

class CartChoices extends StatefulWidget {
  const CartChoices({super.key});

  @override
  State<CartChoices> createState() => _CartChoicesState();
}

class _CartChoicesState extends State<CartChoices> {
  int _selectedMilkIndex = -1;

  List<String> milkChoices = ["Whole Milk", "Almond Milk", "Oat Milk"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: milkChoices.map((String choice) {
        final index = milkChoices.indexOf(choice);
        return Container(
          padding: EdgeInsets.all(0), // Remove all padding
          child: ListTile(
            contentPadding: EdgeInsets.zero, // Remove padding around ListTile content
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(choice),
                Spacer(),
                Text("\$0.57"),
              ],
            ),
            leading: Radio<int>(
              fillColor: MaterialStateProperty.all(ConstColors.primaryColor),
              value: index,
              groupValue: _selectedMilkIndex,
              onChanged: (int? value) {
                setState(() {
                  _selectedMilkIndex = value!;
                });
              },
            ),
          ),
        );
      }).toList(),
    );
  }
}
