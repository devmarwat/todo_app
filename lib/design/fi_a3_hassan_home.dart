import 'package:flutter/material.dart';
import 'fi_a3_hassan_alert_write.dart';
import 'fi_a3_hassan_avator.dart';
import '../utlis/fi_a3_hassan_constants.dart';
import '../utlis/fi_a3_hassan_images.dart';
import '../widgets/fi_a3_hassan_home_card.dart';

class FiA3HassanHome extends StatefulWidget {
  const FiA3HassanHome({super.key});

  @override
  State<FiA3HassanHome> createState() => _FiA3HassanHomeState();
}

class _FiA3HassanHomeState extends State<FiA3HassanHome> {
  bool showListView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  FiA2HassanAvator(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(FiA3HassanImages.hassan,
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            FiA3HassanSizedBox.height10,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "To-Do List",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                FiA3HassanSizedBox.width40,
                FiA3HassanSizedBox.width20,
                Icon(
                  Icons.calendar_month,
                  size: 40,
                ),
              ],
            ),
            const HomeCard(),
            FiA3HassanSizedBox.height10,
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => const FiA3HassanAlertWrite(),
                );
                if (!showListView) {
                  setState(
                    () {
                      showListView = true;
                    },
                  );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FiA3HassanSizedBox.width10,
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 232, 232),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  FiA3HassanSizedBox.width10,
                  const Text(
                    "Add New Task",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
