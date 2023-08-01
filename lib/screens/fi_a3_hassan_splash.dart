import 'dart:async';
import 'package:flutter/material.dart';

import '../utlis/fi_a3_hassan_constants.dart';
import '../utlis/fi_a3_hassan_images.dart';
import 'fi_a3_hassan_login.dart';

class FiA3HassanSplasher extends StatefulWidget {
  const FiA3HassanSplasher({super.key});
  @override
  State<FiA3HassanSplasher> createState() => _FiA3HassanSplasherState();
}

class _FiA3HassanSplasherState extends State<FiA3HassanSplasher> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const FiA3HassanLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 62, 53),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              width: 150,
              height: 150,
              image: AssetImage(FiA3HassanImages.clock),
            ),
            FiA3HassanSizedBox.height5,
            Text.rich(
              TextSpan(
                text: ' Keep On\n',
                style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 4,
                    
                    color: Colors.white),
                children: <InlineSpan>[
                  TextSpan(
                    text: '   Time',
                    style: TextStyle(
                        fontSize: 40,
                        
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
