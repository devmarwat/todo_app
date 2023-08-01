import 'package:flutter/material.dart';
import '../core/fi_a3_hassan_button.dart';
import '../core/fi_a3_hassan_textfield_email.dart';
import '../core/fi_a3_hassan_textfield_password.dart';
import '../services/read.dart';
import '../utlis/fi_a3_hassan_constants.dart';
import '../utlis/fi_a3_hassan_images.dart';
import '../design/fi_a3_hassan_home.dart';

class FiA3HassanLogin extends StatelessWidget {
  const FiA3HassanLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Center(
        child: Column(
          children: [
            FiA3HassanSizedBox.height40,
            FiA3HassanSizedBox.height40,
            FiA3HassanSizedBox.height40,
            Image.asset(
              FiA3HassanImages.clock,
              width: 80,
            ),
            const Text(
              "Login Now",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 2),
            ),
            FiA3HassanSizedBox.height10,
            const Text(
              "Please enter the details below to continue...",
              style: TextStyle(fontSize: 17, color: FiA3HassanColors.lightgrey),
            ),
            FiA3HassanSizedBox.height40,
            FiA3HassanSizedBox.height10,
            const FiA3HassanTextFieldEmail(),
            const FiA3HassanTextFieldPassword(),
            FiA3HassanSizedBox.height10,
            FiA3HassanButton(
              onPressed: () {
                UserProvider();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FiA3HassanHome()),
                );
              },
              color: Colors.red,
              child: const Text("login"),
            ),
          ],
        ),
      ),
    );
  }
}
