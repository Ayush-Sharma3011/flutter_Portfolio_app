import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
      ),
      body: Center(
  child: SingleChildScrollView(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 70,
          backgroundImage: const AssetImage('assets/profile.png'),
        ),
        const SizedBox(height: 16),
        const Text(
          'Ayush Sharma',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Flutter Developer',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 20),
        const Text(
          'I build beautiful and functional mobile/web apps with Flutter.',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),

        /// 🎯 These will now look like actual buttons
         CustomButton(
          text: 'Contact Me',
          textColor: Colors.white,
          onPressed: () {
            // Add your contact logic here
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Contact Me'),
                content: const Text('You can reach me at sharmaayush300424@gmail.com'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          },
          ),
        
        CustomButton(
          text: 'Download Resume',
          textColor: Colors.white,
          onPressed: () {
            // Add your download logic here
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Connect on LinkedIn'),
                content: const Text('You can connect with me at https://www.linkedin.com/in/ayush-sharma3011/'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          },
        ),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Column(
              children: [
                Text('10+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Projects'),
              ],
            ),
            Column(
              children: [
                Text('200+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Followers'),
              ],
            ),
          ],
        ),
      ],
    ),
  ),
),

    );
  }
}
