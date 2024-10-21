import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(      
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 5.0),   
                ), 
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent, width: 5.0),
                )
              ),
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: TextButton(
                onPressed: () {
      
                }, 
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlueAccent),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)
                    )
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}