import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  static const Color blue = Color(0xFF273D9B);

  Widget textField(String text) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget dropdownBox(String text) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
            size: 28,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/images (4).jpg',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: blue.withValues(alpha: 0.88),
            ),
          ),

          Positioned(
            top: 25,
            left: 25,
            right: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 12,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 35),

                  textField('Roberts Turner'),
                  textField('roberts.turner'),
                  textField('******'),
                  textField('roberts.turner@mail.com'),

                  Row(
                    children: [
                      Expanded(
                        child: dropdownBox('29 y.o'),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: dropdownBox('Male'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  dropdownBox('United State'),

                  const Spacer(),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 330),
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.75),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'SUBMIT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}