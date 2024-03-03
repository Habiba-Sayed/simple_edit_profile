import 'package:flutter/material.dart';
import 'package:simple_edit_profile/edit_screen.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Profile",
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
      )),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(alignment: Alignment.center, children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://www.dutch.com/cdn/shop/articles/shutterstock_538333303.jpg?v=1683242960"),
              ),
              Container(
                margin: EdgeInsets.only(top: 140),
                width: 50,
                height: 50,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Edit_Screen(),
                        ));
                  },
                  child: Icon(
                    Icons.mode_edit_outlined,
                    color: Colors.blue.shade500,
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(50)),
              )
            ]),
            Text(
              "Habiba Sayed",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "habibasayed@gmail.com",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Become an Publisher",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account settings",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Personal information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Time spent",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Following",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Help & Support",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy policy",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FAQ & Help",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Log out",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                  Icon(
                    Icons.logout,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          currentIndex: 3,
          fixedColor: Colors.black,
          iconSize: 25,
          selectedFontSize: 16,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w700,
          ),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_rounded), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
          ]),
    );
  }
}
