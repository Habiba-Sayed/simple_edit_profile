import 'package:flutter/material.dart';
import 'package:simple_edit_profile/profile_screen.dart';

class Edit_Screen extends StatefulWidget {
  const Edit_Screen({super.key});

  @override
  State<Edit_Screen> createState() => _Edit_ScreenState();
}

class _Edit_ScreenState extends State<Edit_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(5),
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade600, blurRadius: 1)
                ]),
            child: Icon(
              Icons.arrow_back_rounded,
              size: 25,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://www.dutch.com/cdn/shop/articles/shutterstock_538333303.jpg?v=1683242960"),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Edit image",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w800)),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.grey.shade50,
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    size: 20,
                    color: Colors.grey.shade500,
                  ),
                  suffixIcon: Icon(
                    Icons.disabled_by_default_outlined,
                    size: 20,
                    color: Colors.grey.shade500,
                  ),
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.grey.shade50,
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.grey.shade500,
                  ),
                  suffixIcon: Icon(
                    Icons.disabled_by_default_outlined,
                    size: 20,
                    color: Colors.grey.shade500,
                  ),
                  border: InputBorder.none,
                  hintText: "Full name",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500),
                )),
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Text(
                  "Change password",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Card(
                color: Colors.grey.shade50,
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey.shade500,
                  ),
                  border: InputBorder.none,
                  hintText: "Enter old password",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.grey.shade50,
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey.shade500,
                  ),
                  border: InputBorder.none,
                  hintText: "Enter new password",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500),
                )),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                child: Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
