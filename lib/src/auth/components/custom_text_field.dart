//Tela de formulário
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final bool isObscure;
  final String label;

  const CustomTextField(
      {super.key, 
      required this.icon, 
      this.isObscure = false, 
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
