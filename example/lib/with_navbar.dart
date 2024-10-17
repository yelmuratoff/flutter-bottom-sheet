import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';

class ScaffoldNavbarPage extends StatefulWidget {
  const ScaffoldNavbarPage({super.key});

  @override
  State<ScaffoldNavbarPage> createState() => _ScaffoldNavbarPageState();
}

class _ScaffoldNavbarPageState extends State<ScaffoldNavbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold with Navbar'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Bottom Sheet'),
          onPressed: () {
            showFlexibleBottomSheet<void>(
              isExpand: false,
              initHeight: 0.8,
              maxHeight: 0.8,
              context: context,
              builder: (context, controller, offset) {
                return ListView(
                  shrinkWrap: true,
                  controller: controller,
                  children: [
                    Image.asset('assets/images/rabbit.jpg'),
                    const Text(
                        'Rabbits are small, furry mammals with long ears, short fluffy tails, and strong, large hind legs. They have 2 pairs of sharp incisors (front teeth), one pair on top and one pair on the bottom. They also have 2 peg teeth behind the top incisors'),
                  ],
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
