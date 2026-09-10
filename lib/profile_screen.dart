import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: const Color(0xFFD219C9),
        elevation: 0,
        title: const Text(
          'All inboxes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors. white  ,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: const Color(0xFFD219C9),

                child: const Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 55,
                        color: Color(0xFFD219C9),
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Rintu Singh',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      'rintu@gmail.com',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),

              const ListTile(
                leading: Icon(Icons.all_inbox),
                title: Text('All inboxes'),
              ),

              const ListTile(
                leading: Icon(Icons.inbox),
                title: Text('inbox'),
              ),

              const ListTile(
                leading: Icon(Icons.double_arrow),
                title: Text('priority inbox'),
              ),

              const ListTile(
                leading: Icon(Icons.social_distance),
                title: Text('Social'),
              ),

              const ListTile(
                leading: Icon(Icons.star_rate),
                title: Text('Starred'),
              ),

              const ListTile(
                leading: Icon(Icons.send),
                title: Text('sent'),
              ),

              const ListTile(
                leading: Icon(Icons.safety_check),
                title: Text('Spam'),
              ),

              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('trash'),
              ),

            ],
          ),
        ),
      ),

      body: SafeArea(
        child: ListView(
          children: [
            postItem(
              image: 'assets/images/img_1.png',
              title: 'Praesent Maximus Nisl Metus, Vitae Imperdiet Eros',
            ),

            postItem(
              image: 'assets/images/img_2.png',
              title: 'Quisque Lobortis Massa Quis Augue Venenatis',
            ),

            postItem(
              image: 'assets/images/img_3.png',
              title: 'In Lobortis Aliquet Rutrum, Praesent Eget',
            ),

            postItem(
              image: 'assets/images/img_5.png',
              title: 'Cras Finibus Tortor Quis Fermentum Suscipit',
            ),

            postItem(
              image: 'assets/images/images.jpg',
              title: 'Aenean Eleifend Lorem Nec Posuere',
            ),
          ],
        ),
      ),
    );
  }

  Widget postItem({
    required String image,
    required String title,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.all(12),

      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE0E0E0),
            width: 1,
          ),
        ),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),

            child: Image.asset(
              image,
              width: 130,
              height: 130,
              fit: BoxFit.cover,

              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 130,
                  height: 130,
                  color: Colors.grey.shade300,
                  child: const Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF37474F),
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  '02 Mar 2016',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF37474F),
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