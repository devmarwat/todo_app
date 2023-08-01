import 'package:flutter/material.dart';
import '../services/modify.dart';

// ignore: must_be_immutable
class FiA3HassanAlertUpdate extends StatefulWidget {
  String data;
  FiA3HassanAlertUpdate({super.key, required this.data});

  @override
  State<FiA3HassanAlertUpdate> createState() => _FiA3HassanAlertUpdateState();
}

class _FiA3HassanAlertUpdateState extends State<FiA3HassanAlertUpdate> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SizedBox(
      child: Center(
        child: AlertDialog(
          title: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: "Enter your task"),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  String taskdata = controller.text;
                  UpdateData().updateDataToFirestore(widget.data, taskdata);
                  Navigator.pop(context);
                },
                child: const Text("OK"))
          ],
        ),
      ),
    );
  }
}
