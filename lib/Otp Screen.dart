import 'package:flutter/material.dart';
import 'Success Screen.dart';

class OtpScreen extends StatefulWidget {
  final String mobileNumber;

  const OtpScreen({
    super.key,
    required this.mobileNumber,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  static const purple = Color(0xFF5727D9);

  final List<TextEditingController> controllers =
  List.generate(
    6,
        (index) => TextEditingController(),
  );

  final List<FocusNode> focusNodes =
  List.generate(
    6,
        (index) => FocusNode(),
  );

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }

    for (final node in focusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  void nextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SuccessScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),

                    const Spacer(),

                    const Text(
                      'Verify OTP',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Spacer(),

                    const SizedBox(width: 48),
                  ],
                ),

                const SizedBox(height: 30),

                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAE2FF),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.chat_bubble,
                    color: purple,
                    size: 48,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Enter the OTP',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "We've sent a 6-digit OTP to",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  '+91 ${widget.mobileNumber}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  children: List.generate(
                    6,
                        (index) {
                      return Expanded(
                        child: Container(
                          height: 58,
                          margin: EdgeInsets.only(
                            right: index == 5 ? 0 : 5,
                          ),
                          child: TextField(
                            controller: controllers[index],
                            focusNode: focusNodes[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            decoration: InputDecoration(
                              counterText: '',
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(8),
                              ),
                              focusedBorder:
                              OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(8),
                                borderSide:
                                const BorderSide(
                                  color: purple,
                                  width: 2,
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              if (value.isNotEmpty &&
                                  index < 5) {
                                FocusScope.of(context)
                                    .requestFocus(
                                  focusNodes[index + 1],
                                );
                              }
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  'Resend OTP in 00:25',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    onPressed: nextScreen,
                    child: const Text(
                      'Verify OTP',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 22),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Change Mobile Number',
                    style: TextStyle(
                      color: purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}