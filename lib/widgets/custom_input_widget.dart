import 'package:flutter/material.dart';

class CustomInputFieldWidget extends StatelessWidget {
  final String? hintText, labelText, helperText, counterText;
  final IconData? icon, suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputFieldWidget({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      obscureText: obscureText,
      keyboardType: keyboardType,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {},
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo 3 letras' : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        icon: icon == null ? null : Icon(icon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
      ),
    );
  }
}
