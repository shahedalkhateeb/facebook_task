import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final Color blue = const Color(0xFF1877F2);
  final Color grey = const Color(0xFF8A8D91);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Facebook",
                      style: TextStyle(
                        color: blue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.add, color: Colors.white, size: 18),
                        ),
                        SizedBox(width: 12),
                        Icon(Icons.search, size: 22),
                        SizedBox(width: 12),
                        Icon(Icons.messenger, size: 22),
                      ],
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: blue, width: 3),
                      ),
                    ),
                    child: Icon(Icons.home, color: blue, size: 32),
                  ),
                  Icon(Icons.ondemand_video, color: grey, size: 30),
                  Icon(Icons.storefront, color: grey, size: 30),
                  Icon(Icons.account_circle_outlined, color: grey, size: 30),
                  Icon(Icons.notifications_none, color: grey, size: 30),
                  const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage("images/profile.jpg"),
                  ),
                ],
              ),
              const Divider(height: 1),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("images/profile.jpg"),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "What's in Your Mind?",
                        style: TextStyle(color: grey, fontSize: 18),
                      ),
                    ),
                    const Icon(Icons.photo_library_outlined, color: Colors.green, size: 30),
                  ],
                ),
              ),
              Container(height: 3, color: Colors.grey.shade300),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: SizedBox(
                  height: 165,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    children: [
                      Container(
                        width: 102,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(14),
                                    ),
                                    child: Image.asset(
                                      "images/profile.jpg",
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: -12,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: blue,
                                      child: const Icon(Icons.add,
                                          color: Colors.white, size: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16, bottom: 6),
                              child: Text(
                                "Create a\nStory",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),

                      storyCard("images/story1.jpg", "images/profile1.jpg"),
                      storyCard("images/story2.png", "images/profile2.jpg"),
                      storyCard("images/story3.jpg", "images/profile3.jpg"),
                    ],
                  ),
                ),
              ),
              Container(height: 3, color: Colors.grey.shade300),

              postWidget(),
              Container(height: 3, color: Colors.grey.shade300),
              postWidget(),
            ],
          ),
        ),
      ),
    );
  }
  Widget postWidget() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage("images/route_logo.jpg"),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Route",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text("8h . ", style: TextStyle(color: grey, fontSize: 13)),
                        Icon(Icons.public, color: grey, size: 13),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
        ),

        Image.asset(
          "images/post.jpg",
          width: double.infinity,
          height: 271,
          fit: BoxFit.cover,
        ),

        const Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 14),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 14),
              Icon(Icons.send_outlined),
              Spacer(),
              Icon(Icons.bookmark_border),
            ],
          ),
        ),
      ],
    );
  }

  Widget storyCard(String image, String profile) {
    return Container(
      width: 112,
      margin: const EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              image,
              width: 112,
              height: 178,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: blue, width: 2),
              ),
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(profile),
              ),
            ),
          ),
        ],
      ),
    );
  }}