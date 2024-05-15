import 'package:dreampage/components/app_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101624),
      appBar: const AppAppBar(textTitle: 'P R O F I L E'),
      body: Padding(
        padding:
            const EdgeInsets.fromLTRB(8, 8, 8, kBottomNavigationBarHeight - 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              // User Avatar
              const Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    'assets/images/user_placeholder.png',
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Visitor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'visitor@visitor.com',
                style: TextStyle(
                  color: Color(0xff7D848D),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6 -
                    kBottomNavigationBarHeight -
                    15,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),

                        // Button Log Out
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              context.go('/');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffA28D4F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Menu 1
                        ListTile(
                          leading: const Icon(
                            Icons.person_outline_rounded,
                            size: 30,
                          ),
                          title: const Text(
                            'Profile',
                            style: TextStyle(
                                color: Color(0xff1B1E28), fontSize: 16),
                          ),
                          trailing:
                              const Icon(Icons.keyboard_arrow_right_rounded),
                          onTap: () {
                            // TODO: IMPLEMENT ONTAP FUNCTION
                          },
                        ),

                        // Menu 2
                        ListTile(
                          leading: const Icon(
                            Icons.info_outline_rounded,
                            size: 30,
                          ),
                          title: const Text(
                            'About App',
                            style: TextStyle(
                                color: Color(0xff1B1E28), fontSize: 16),
                          ),
                          trailing:
                              const Icon(Icons.keyboard_arrow_right_rounded),
                          onTap: () {
                            context.pushNamed('about');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
