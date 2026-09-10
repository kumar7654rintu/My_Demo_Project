import 'package:flutter/material.dart';

class InvalidMobileScreen extends StatelessWidget {
  final String mobileNumber;

  const InvalidMobileScreen({
    super.key,
    required this.mobileNumber,
  });

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

                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE5E5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.security,
                    color: Colors.red,
                    size: 60,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Invalid Mobile Number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Please enter a valid 10-digit\n'
                      'mobile number.',
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
                      Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                            width: 1.5,
                          ),
                          borderRadius:
                          BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Text(
                            mobileNumber.isEmpty
                                ? 'Enter mobile number'
                                : '+91 $mobileNumber',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Row(
                        children: [
                          Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Please enter a valid mobile number',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],

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
                              borderRadius:
                              BorderRadius.circular(9),
                            ),
                          ),
                          onPressed: () {
                            Navigator.popUntil(
                              context,
                                  (route) => route.isFirst,
                            );
                          },
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
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