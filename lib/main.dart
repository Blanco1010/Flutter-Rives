import 'package:flutter/material.dart';
import 'package:flutter_rive/pages/dash_animation_page.dart';
import 'pages/custom_controller_page.dart';
import 'pages/example_state_machine_page.dart';
import 'pages/liquid_download_page.dart';
import 'pages/little_machine_page.dart';
import 'pages/play_one_shot_animation_page.dart';
import 'pages/play_pause_animation_page.dart';
import 'pages/simple_animation_page.dart';
import 'pages/simple_state_machine.dart';
import 'pages/state_machine_skills_page.dart';

void main() => runApp(const MaterialApp(
      debugShowMaterialGrid: false,
      title: 'Navigation Basics',
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplos con Rives'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('Simple Animation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleAnimation(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Play/Pause Animation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayPauseAnimationPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Play One-Shot Animation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const PlayOneShotAnimationPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button State Machine'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const ExampleStateMachinePage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Skills Machine'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const StateMachineSkillsPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Little Machine'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const LittleMachinePage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Liquid Download'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const LiquidDownloadPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Custom Controller - Speed'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const SpeedyAnimationPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Simple State Machine'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const SimpleStateMachinePage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Dash Animation'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashAnimationPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
