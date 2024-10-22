import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';
import 'package:todo_flutter/ui/widgets/my_timeline_tile.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  DateTime _selectedValue = DateTime.now();
  // Store the selected date

  String formatted() {
    final DateFormat formatter = DateFormat('MMMMd');
    final String formatted = formatter.format(_selectedValue);
    return formatted;
  }

  String formattedDay() {
    DateTime today = DateTime.now();

    if (_selectedValue.year == today.year &&
        _selectedValue.month == today.month &&
        _selectedValue.day == today.day) {
      return "Today";
    } else {
      final DateFormat formatter = DateFormat('EEEE');
      return formatter.format(_selectedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formatted(),
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      Text(
                        formattedDay(),
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add task button functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff49B583),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Row(
                      children: [Icon(Icons.add), Text("Add Task")],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Date Picker Timeline
              DatePicker(
                DateTime.now(),
                initialSelectedDate: _selectedValue, // Bind to selected value
                selectionColor: Colors.white,
                selectedTextColor: const Color(0xff49B583),

                height: 90,
                onDateChange: (date) {
                  // Update selected date when user selects a new date
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),

              const SizedBox(height: 15),

              // Example of displaying tasks or events for the selected date
              Expanded(
                  child: ListView(
                children: const [
                  MyTimelineTile(isFirst: true, isLast: false, isPast: true),
                  MyTimelineTile(isFirst: false, isLast: false, isPast: true),
                  MyTimelineTile(isFirst: false, isLast: true, isPast: false)
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
