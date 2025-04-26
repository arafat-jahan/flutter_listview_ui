import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main App class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to My App"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Image(
              image: AssetImage('assets/welcome.png'),
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  studentCard("Arafat Jahan", 20, "assets/ali.png", "Love coding"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                  studentCard("Ali Reza", 32, "assets/ali.png", "Flutter Developer"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ⭐ এখানে ভুল ঠিক করা হয়েছে
  static Widget studentCard(String name, int age, String image, String description) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(image),
        ),
        title: Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Age: $age",
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.info_outline, size: 16, color: Colors.grey),
                const SizedBox(width: 5), // ⭐ এখানে height না, width দিতে হয়
                Expanded(
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // Future কাজ এখানে করতে পারো
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Text(
            "View",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
