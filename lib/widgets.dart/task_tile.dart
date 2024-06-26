import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        'This is a task',
      ),
      trailing: TaskCheckbox(
        checkboxState: null,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  const TaskCheckbox({super.key, required this.checkboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (value) {
        // setState(() {
        //   isChecked = value;
        // });
      },
    );
  }
}
