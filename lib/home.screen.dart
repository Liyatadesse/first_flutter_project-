import 'package:flutter/material.dart';
import 'package:flutter_project/second.screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int level;

  @override
  void initState() {
    super.initState();
    level = 0;
  }

  @override
  void dispose() {
    level = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('first project'),
        centerTitle: true,
        // backgroundColor: Colors.grey[850],
        elevation: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Skyline-1.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey[800],
            ),
            const Text(
              'NAME',
              style: TextStyle(color: Colors.lightGreen, letterSpacing: 2),
            ),
            const SizedBox(height: 9),
            const Text(
              'Liya',
              style: TextStyle(
                  color: Colors.blueAccent,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text(
              'CURRENT LEVEL ',
              style: TextStyle(color: Colors.lightGreen, letterSpacing: 2),
            ),
            const SizedBox(height: 9),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const SecondScreen();
                    },
                  ),
                );
              },
              child: const Text("Go to second screen"),
            ),
            const SizedBox(height: 10),
            Text(
              '$level',
              style: const TextStyle(
                  color: Colors.blueAccent,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.amber,
                ),
                SizedBox(width: 10),
                Text(
                  'tadesseliya@gmail.com',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    letterSpacing: 2,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          level = level + 1;
          setState(() {});
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
    );
  }
}
