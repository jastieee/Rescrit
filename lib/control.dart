import 'package:flutter/material.dart';
import 'package:rescrit/const/const.dart';

class Control extends StatefulWidget {
  const Control({super.key});

  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Control Screen', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/home.png'), // Use home icon instead of menu
          onPressed: () {
            Navigator.of(context).pushNamed('/home'); // Navigate to Home screen
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/set1.png', color: Colors.black),
            onPressed: () {
              // Implement settings action
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: bgcolor,
          ),
          // Add the Positioned.fill widget here
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/bg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // This Expanded is not necessary, just make the camera view fill the screen
          Container(
            width: double.infinity, // Set to fill the entire screen width
            height: double.infinity, // Set to fill the entire screen height
            color: Colors.white, // Set tile color to white
            child: const Center(
              child: Text("Camera Tile"), // Placeholder for camera widget
            ),
          ),
        ],
      ),
    );
  }
}
