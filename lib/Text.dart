import 'package:flutter/material.dart';

class StepScreen extends StatefulWidget {
  const StepScreen({super.key});

  @override
  State<StepScreen> createState() => _StepScreenState();
}

class _StepScreenState extends State<StepScreen> {
  int step = 1;

  void next() {
    if (step < 5) {
      setState(() {
        step++;
      });
    }
  }

  void back() {
    if (step > 1) {
      setState(() {
        step--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcccccc),
      appBar: AppBar(
        backgroundColor: const Color(0xff1976d2),
        title: const Text(
          'Text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 98,
            width: double.infinity,
            color: Colors.white,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              'Step $step of 5',
              style: const TextStyle(
                fontSize: 28,
                color: Colors.black87,
              ),
            ),
          ),

          Expanded(
            child: Center(
              child: Text(
                'Step $step of 5',
                style: const TextStyle(
                  fontSize: 58,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff666666),
                ),
              ),
            ),
          ),

          Container(
            height: 100,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: step == 1 ? null : back,
                  child: Row(
                    children: [
                      Icon(
                        Icons.chevron_left,
                        size: 38,
                        color: step == 1
                            ? const Color(0xffbbbbbb)
                            : const Color(0xff666666),
                      ),
                      Text(
                        'BACK',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: step == 1
                              ? const Color(0xffbbbbbb)
                              : const Color(0xff666666),
                        ),
                      ),
                    ],
                  ),
                ),

                TextButton(
                  onPressed: step == 5 ? null : next,
                  child: Row(
                    children: [
                      Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: step == 5
                              ? const Color(0xffbbbbbb)
                              : const Color(0xff666666),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 38,
                        color: step == 5
                            ? const Color(0xffbbbbbb)
                            : const Color(0xff666666),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}