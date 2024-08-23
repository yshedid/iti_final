import 'package:flutter/material.dart';
import 'package:iti_final/helper/app_color.dart';

class BuildTextFromfield extends StatefulWidget {
  final String label;
  final String hint;
  final bool isPassword;
  final Function(String)? onChanged;

  const BuildTextFromfield({
    required this.label,
    required this.hint,
    this.isPassword = false,
    this.onChanged,
    super.key,
  });

  @override
  State<BuildTextFromfield> createState() => _BuildTextFromfieldState();
}

class _BuildTextFromfieldState extends State<BuildTextFromfield> {
  bool showPassword = false;
  String? emailError;
  String? passwordError;
  final TextEditingController _controller = TextEditingController();

  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(email);
  }

  void validateEmail(String value) {
    setState(() {
      if (value.isEmpty) {
        emailError = "Email must not be empty";
      } else if (!isValidEmail(value)) {
        emailError = "Invalid Email format";
      } else {
        emailError = null;
      }
    });
  }

  void validatePassword(String value) {
    setState(() {
      if (value.isEmpty) {
        passwordError = "Password must not be empty";
      } else {
        passwordError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 8),
        TextFormField(
          controller: _controller,
          obscureText: widget.isPassword && !showPassword,
          keyboardType: widget.isPassword ? TextInputType.text : TextInputType.emailAddress,
          onChanged: (value) {
            if (widget.label.toLowerCase() == 'email') {
              validateEmail(value);
            } else if (widget.isPassword) {
              validatePassword(value);
            }
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          decoration: InputDecoration(
            errorText: widget.label.toLowerCase() == 'email' 
                ? emailError 
                : (widget.isPassword ? passwordError : null),
            hintText: widget.hint,
            hintStyle: const TextStyle(color: myGray),
            filled: true,
            fillColor: Colors.grey[200],
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off,
                      color: myGray,
                    ),
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: myGray),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: myGray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: myBlue, width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),
      ],
    );
  }
}