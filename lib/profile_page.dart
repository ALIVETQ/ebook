import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("images/tan2004.png"),
            ),
            const SizedBox(height: 50),
            itemProfile('Name', 'Ahad Hashmi', Icons.person),
            const SizedBox(height: 20),
            itemProfile('Phone', '03107085816', Icons.phone),
            const SizedBox(height: 20),
            itemProfile('Address', 'abc address, xyz city', Icons.place),
            const SizedBox(height: 20),
            itemProfile('Email', 'ahadhashmideveloper@gmail.com', Icons.mail),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFD700),
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Color(0xffFFD700),
      ),
    );
  }
}
