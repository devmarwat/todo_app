import 'package:flutter/material.dart';

class FiA3HassanTextFieldPassword extends StatefulWidget {
  const FiA3HassanTextFieldPassword({super.key});

  @override
  State<FiA3HassanTextFieldPassword> createState() =>
      _FiA3HassanTextFieldPasswordState();
}

class _FiA3HassanTextFieldPasswordState
    extends State<FiA3HassanTextFieldPassword> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SizedBox(
        width: 350,
        height: 90,
        child: TextFormField(
          obscureText: passwordVisible,
          decoration: InputDecoration(
            fillColor: const Color(0xffF8F9FA),
            filled: true,
            hintText: 'password',
            prefixIcon: const Icon(
              Icons.lock_open,
              color: Color(0xff323F4B),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(
                  () {
                    passwordVisible = !passwordVisible;
                  },
                );
              },
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffE4E7EB)),
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffE4E7EB)),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
