import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Divider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const DividerScreen(),
    );
  }
}

class DividerScreen extends StatelessWidget {
  const DividerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),

      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 2,
        toolbarHeight: 55,

        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 28,
        ),

        title: const Text(
          'Divider',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),

        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 8),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: Card(
          elevation: 5,
          shadowColor: Colors.black45,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.antiAlias,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // IMAGE
              SizedBox(
                width: double.infinity,
                height: 180,
                child: Image.asset(
                  'assets/images/img_6.png',
                  fit: BoxFit.cover,
                ),
              ),

              // CONTENT
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  18,
                  14,
                  18,
                  12,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      'Cafe Badilico',
                      style: TextStyle(
                        fontSize: 23,
                        color: Color(0xFF263238),
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                          size: 20,
                        ),

                        const SizedBox(width: 8),

                        const Text(
                          '4.7 (51)',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      '\$ - Italian cafe',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF263238),
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur '
                          'adipiscing elit. Etiam efficitur ipsum in '
                          'placerat molestie.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.3,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Divider(
                      thickness: 1,
                      color: Color(0xFFE0E0E0),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Tonight's availability",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF263238),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        _timeButton('5:30PM'),
                        _timeButton('7:30PM'),
                        _timeButton('8:00PM'),
                      ],
                    ),

                    const SizedBox(height: 12),

                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize:
                        MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'RESERVE',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF1976D2),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _timeButton(String time) {
    return Container(
      width: 70,
      height: 40,

      alignment: Alignment.center,

      decoration: BoxDecoration(
        color: const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(25),
      ),

      child: Text(
        time,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF555555),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}