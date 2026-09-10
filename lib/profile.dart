import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color yellow = Color(0xFFFFC107);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final bool isMobile = size.width < 600;

    final double profileHeight = isMobile ? 245 : 450;
    final double postHeight = isMobile ? 125 : 270;
    final double profileImageSize = isMobile ? 82 : 140;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      appBar: AppBar(
        backgroundColor: yellow,
        elevation: 2,
        toolbarHeight: isMobile ? 55 : 64,

        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: isMobile ? 28 : 34,
        ),

        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 24 : 30,
            fontWeight: FontWeight.w400,
          ),
        ),

        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: isMobile ? 25 : 30,
          ),

          SizedBox(width: isMobile ? 10 : 18),

          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: isMobile ? 26 : 30,
          ),

          SizedBox(width: isMobile ? 5 : 8),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(isMobile ? 10 : 16),

        child: Column(
          children: [

            Container(
              height: profileHeight,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),

                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1518459031867-a89b944bffe4?auto=format&fit=crop&w=1000&q=80',
                  ),
                  fit: BoxFit.cover,
                ),

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black.withValues(alpha: 0.35),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Container(
                      width: profileImageSize,
                      height: profileImageSize,
                      padding: const EdgeInsets.all(3),

                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 5,
                          ),
                        ],
                      ),

                      child: ClipOval(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=400&q=80',

                          fit: BoxFit.cover,

                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(
                      height: isMobile ? 12 : 30,
                    ),

                    Text(
                      'Jessica W. Willis',

                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile ? 21 : 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(
                      height: isMobile ? 6 : 12,
                    ),

                    Text(
                      '301 Followers • 250 Following',

                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isMobile ? 14 : 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: isMobile ? 8 : 18,
            ),

            Expanded(
              child: _postCard(
                title: 'Foggy Hill',
                time: '23 minutes',
                number: '15',

                image:
                'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=1200&q=80',

                height: postHeight,
                isMobile: isMobile,
              ),
            ),

            SizedBox(
              height: isMobile ? 8 : 18,
            ),

            Expanded(
              child: _postCard(
                title: 'City Building',
                time: '18 minutes',
                number: '50',

                image:
                'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?auto=format&fit=crop&w=1200&q=80',

                height: postHeight,
                isMobile: isMobile,
              ),
            ),

            SizedBox(
              height: isMobile ? 8 : 18,
            ),

            Expanded(
              child: _postCard(
                title: 'Side Park',
                time: '45 minutes',
                number: '36',

                image:
                'https://images.unsplash.com/photo-1500534623283-312aade485b7?auto=format&fit=crop&w=1200&q=80',

                height: postHeight,
                isMobile: isMobile,
              ),
            ),
          ],
        ),
      ),
    );
  }


  static Widget _postCard({
    required String title,
    required String time,
    required String number,
    required String image,
    required double height,
    required bool isMobile,
  }) {
    return Container(
      height: height,
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),

        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),

        child: Stack(
          children: [

            Positioned.fill(
              child: Image.network(
                image,

                fit: BoxFit.cover,

                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey,

                    child: const Icon(
                      Icons.image,
                      color: Colors.white,
                      size: 40,
                    ),
                  );
                },
              ),
            ),

            Positioned.fill(
              child: Container(
                color: Colors.black.withValues(alpha: 0.18),
              ),
            ),

            Positioned(
              left: isMobile ? 15 : 28,
              top: isMobile ? 12 : 30,

              child: Text(
                title,

                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobile ? 19 : 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            Positioned(
              left: isMobile ? 15 : 28,
              top: isMobile ? 47 : 82,

              child: Row(
                children: [

                  Icon(
                    Icons.access_time,
                    color: Colors.white,
                    size: isMobile ? 14 : 20,
                  ),

                  SizedBox(
                    width: isMobile ? 5 : 8,
                  ),

                  Text(
                    time,

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? 12 : 18,
                    ),
                  ),

                  SizedBox(
                    width: isMobile ? 8 : 15,
                  ),

                  Icon(
                    Icons.image,
                    color: Colors.white,
                    size: isMobile ? 14 : 19,
                  ),

                  SizedBox(
                    width: isMobile ? 4 : 7,
                  ),

                  Text(
                    number,

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isMobile ? 12 : 18,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              right: isMobile ? 12 : 28,
              top: isMobile ? 12 : 28,

              child: Container(
                width: isMobile ? 42 : 74,
                height: isMobile ? 42 : 74,

                decoration: const BoxDecoration(
                  color: yellow,
                  shape: BoxShape.circle,
                ),

                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: isMobile ? 26 : 42,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}