import 'package:flutter/material.dart';

class DateLightScreen extends StatefulWidget {
  const DateLightScreen({super.key});

  @override
  State<DateLightScreen> createState() => _DateLightScreenState();
}

class _DateLightScreenState extends State<DateLightScreen> {
  DateTime? selectedDate;

  Future<void> pickDate() async {
    DateTime? date = selectedDate;

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, change) {
            return AlertDialog(
              backgroundColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              content: SizedBox(
                width: 330,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(
                        30,
                        25,
                        20,
                        25,
                      ),
                      color: const Color(0xff1976d2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '2026',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 20,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            date == null
                                ? 'Sun 30 Aug'
                                : '${weekDay(date!)} ${date!.day} Aug',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 34,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      'August 2026',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 18),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('M'),
                        Text('T'),
                        Text('W'),
                        Text('T'),
                        Text('F'),
                        Text('S'),
                        Text('S'),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: calendar(date, (value) {
                        change(() {
                          date = value;
                        });
                      }),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(
                              color: Color(0xff1976d2),
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            if (date != null) {
                              setState(() {
                                selectedDate = date;
                              });
                            }

                            Navigator.pop(context);
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              color: Color(0xff1976d2),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),
                      ],
                    ),

                    const SizedBox(height: 8),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget calendar(
      DateTime? date,
      Function(DateTime) select,
      ) {
    List<Widget> list = [];

    for (int i = 0; i < 5; i++) {
      list.add(
        const SizedBox(
          width: 40,
          height: 40,
        ),
      );
    }

    for (int i = 1; i <= 31; i++) {
      bool selected =
          date?.year == 2026 &&
              date?.month == 8 &&
              date?.day == i;

      list.add(
        GestureDetector(
          onTap: () {
            select(DateTime(2026, 8, i));
          },
          child: Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selected
                  ? const Color(0xff0914dc)
                  : Colors.transparent,
            ),
            child: Text(
              '$i',
              style: TextStyle(
                color: selected
                    ? Colors.white
                    : Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
    }

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 3,
      runSpacing: 5,
      children: list,
    );
  }

  String weekDay(DateTime date) {
    const names = [
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat',
      'Sun',
    ];

    return names[date.weekday - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color(0xff0d3b66),
        title: const Text(
          'Date Light',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

      body: Center(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),

          child: Align(
            alignment: Alignment.center,

            child: SizedBox(
              width: 120,
              height: 42,

              child: ElevatedButton(
                onPressed: pickDate,

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffe1306c),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.zero,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),

                child: const Text(
                  'Pick Date',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}