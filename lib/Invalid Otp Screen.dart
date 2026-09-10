import 'package:flutter/material.dart';
import 'Invalid Mobile Number Screen.dart';

class InvalidOtpScreen extends StatelessWidget {
  final String mobileNumber;

  const InvalidOtpScreen({
    super.key,
    required this.mobileNumber,
  });

  static const purple = Color(0xFF5727D9);

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
                      'Invalid OTP',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Spacer(),

                    const SizedBox(width: 48),
                  ],
                ),

                const SizedBox(height: 35),

                const Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE5E5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.chat_bubble,
                    color: Colors.red,
                    size: 55,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Invalid OTP',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'The OTP you entered is incorrect.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  '+91 $mobileNumber',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 35),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5),
                    Flexible(
                      child: Text(
                        'Invalid OTP. Please try again.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

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
                          builder: (context) =>
                              InvalidMobileScreen(
                                mobileNumber:
                                mobileNumber,
                              ),
                        ),
                      );
                    },


                    child: const Text(
                      'Verify OTP',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.popUntil(
                      context,
                          (route) => route.isFirst,
                    );
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