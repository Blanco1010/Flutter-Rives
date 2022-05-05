import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class DashAnimationPage extends StatefulWidget {
  const DashAnimationPage({Key? key}) : super(key: key);

  @override
  State<DashAnimationPage> createState() => _DashAnimationPageState();
}

class _DashAnimationPageState extends State<DashAnimationPage> {
  bool _isEyes = false;

  late RiveAnimationController _controllerDance;
  late RiveAnimationController _controllerEyes;

  @override
  void initState() {
    super.initState();
    _controllerDance = SimpleAnimation('slowDance');

    _controllerEyes = OneShotAnimation(
      'lookUp',
      autoplay: false,
      onStop: () => setState(() => _isEyes = false),
      onStart: () => setState(() => _isEyes = true),
    );
  }

  void _togglePlay() =>
      setState(() => _controllerDance.isActive = !_controllerDance.isActive);

  bool get isDancing => _controllerDance.isActive;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dash Animation'),
      ),
      body: Center(
        child: RiveAnimation.asset(
          'assets/dash.riv',
          fit: BoxFit.contain,
          controllers: [_controllerDance, _controllerEyes],
          animations: const [
            'idle',
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            // disable the button while playing the animation
            onPressed: () => _isEyes ? null : _controllerEyes.isActive = true,
            child: Icon(
              _isEyes ? Icons.pause : Icons.play_arrow,
            ),
          ),
          FloatingActionButton(
            // disable the button while playing the animation
            onPressed: () => _togglePlay(),
            child: Icon(
              isDancing ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
}
