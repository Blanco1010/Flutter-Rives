import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SimpleStateMachinePage extends StatefulWidget {
  const SimpleStateMachinePage({Key? key}) : super(key: key);

  @override
  _SimpleStateMachinePageState createState() => _SimpleStateMachinePageState();
}

class _SimpleStateMachinePageState extends State<SimpleStateMachinePage> {
  SMITrigger? _bump;

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(artboard, 'bumpy');
    artboard.addController(controller!);
    _bump = controller.findInput<bool>('bump') as SMITrigger;
  }

  void _hitBump() => _bump?.fire();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animation'),
      ),
      body: Center(
        child: GestureDetector(
          child: RiveAnimation.network(
            'https://cdn.rive.app/animations/vehicles.riv',
            fit: BoxFit.cover,
            onInit: _onRiveInit,
          ),
          onTap: _hitBump,
        ),
      ),
    );
  }
}
