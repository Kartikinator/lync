import 'package:flutter/material.dart';
import 'package:sports_app/screens/registration/signin.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white,
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.black,
          fontSize: 30
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16), // Add some spacing before the profile picture
            const CircleAvatar(
              radius: 50, // Set the circle size
              backgroundImage: AssetImage('assets/images/example_profile_picture.png'), // Add your profile picture here
            ),
            const SizedBox(height: 16), // Add some spacing after the profile picture
            _buildProfileInfo('Name', 'John Doe'),
            _buildProfileInfo('Username', 'johndoe'),
            _buildProfileInfo('Email', 'john.doe@example.com'),
            _buildProfileInfo('Age', '28'),
            _buildProfileInfo('Location', 'New York, NY'),
            TextButton(
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String info) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$label: ', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(info, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
