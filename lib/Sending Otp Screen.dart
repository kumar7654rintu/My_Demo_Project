import 'package:flutter/material.dart';
import 'Invalid Otp Screen.dart';

class SendingOtpScreen extends StatefulWidget {
  final String mobileNumber;

  const SendingOtpScreen({
    super.key,
    required this.mobileNumber,
  });

  @override
  State<SendingOtpScreen> createState() => _SendingOtpScreenState();
}

class _SendingOtpScreenState extends State<SendingOtpScreen> {
  static const purple = Color(0xFF5727D9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F8FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),

                const SizedBox(height: 30),

                const Icon(
                  Icons.security,
                  size: 100,
                  color: purple,
                ),

                const SizedBox(height: 25),

                const Text(
                  'Sending OTP',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'We are sending an OTP\n'
                      'to your mobile number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '🇮🇳  +91 ${widget.mobileNumber}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 20),

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

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InvalidOtpScreen(
                                  mobileNumber: widget.mobileNumber,
                                ),
                              ),
                            );
                          },

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Sending OTP...',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),

                              const SizedBox(width: 10),

                              const SizedBox(
                                width: 22,
                                height: 22,
                                child: CircularProgressIndicator(
                                  strokeWidth: 3,
                                  valueColor:
                                  AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_outline,
                      size: 16,
                    ),

                    SizedBox(width: 7),

                    Text(
                      'Your data is secure with us',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}