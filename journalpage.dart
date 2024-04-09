import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:panic_application/api/model.dart';

class JournalPage extends StatefulWidget {
  final String date;
  final String thoughts;

  final Journal journal;
  const JournalPage({super.key, required this.journal, required this.date, required this.thoughts});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  late final Journal journal;
  late final String date;
  late final String thoughts;


  @override
  void initState() {
    journal = widget.journal;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Journal Page'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            widget.journal.date,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Thoughts: ${widget.journal.thoughts}',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
