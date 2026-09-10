import 'package:flutter/material.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  static const Color purple = Color(0xFF9C27B0);
  static const Color green = Color(0xFF7CB342);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: purple,
        elevation: 2,
        toolbarHeight: 55,
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            const Icon(
              Icons.menu,
              color: Colors.white,
              size: 28,
            ),
            const SizedBox(width: 12),
            const Text(
              'View Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(width: 14),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 6),
        ],
      ),

      body: Column(
        children: [
          const SizedBox(height: 18),

          const Text(
            'Julianna Carter',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            'Photographer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.message,
                color: green,
                size: 28,
              ),

              const SizedBox(width: 30),

              Container(
                width: 125,
                height: 125,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: purple,
                    width: 2,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/img_7.png',
                  ),
                ),
              ),

              const SizedBox(width: 30),

              const Icon(
                Icons.phone,
                color: green,
                size: 28,
              ),
            ],
          ),

          const SizedBox(height: 15),

          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE0E0E0),
          ),

          SizedBox(
            height: 75,
            child: Row(
              children: [
                _statItem('1.5 K', 'Posts'),
                _statItem('17.8 K', 'Followers'),
                _statItem('1.3 K', 'Following'),
              ],
            ),
          ),

          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE0E0E0),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(
              25,
              12,
              25,
              12,
            ),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur '
                  'adipiscing elit. etiam efficitur ipsum in '
                  'placerat molestie. Fusce quis mauris a enim '
                  'sollicitudin',
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                height: 1.25,
                color: Colors.black87,
              ),
            ),
          ),

          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFE0E0E0),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                25,
                12,
                20,
                8,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _detail(
                          'Website',
                          'visual-photo.me',
                        ),
                      ),
                      Expanded(
                        child: _detail(
                          'Email',
                          'juliana.c@mail.com',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 13),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _detail(
                          'Phone',
                          '(022)77723287',
                        ),
                      ),
                      Expanded(
                        child: _detail(
                          'Location',
                          'United State',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 13),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: _detail(
                          'Zip Code',
                          '6525',
                        ),
                      ),
                      Expanded(
                        child: _detail(
                          'Address',
                          '160th St, Fresh\n'
                              'Meadows, NY, 11365',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: SizedBox(
        width: 48,
        height: 48,
        child: FloatingActionButton(
          backgroundColor: green,
          onPressed: () {},
          child: const Icon(
            Icons.person_add,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }

  static Widget _statItem(
      String number,
      String title,
      ) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: const TextStyle(
              color: purple,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _detail(
      String title,
      String value,
      ) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: purple,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}