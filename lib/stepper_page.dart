import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({super.key});

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  // int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stepper Example')),
      body: StepperExample(),
    );
  }
}

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(steps: [
        Step(title: Text("step1"), content: Text("information for step1",style: TextStyle(color: Colors.red),)),
        Step(title: Text("step1"), content: Text("information for step2",style: TextStyle(color: Colors.red),)),
        Step(title: Text("step1"), content: Text("information for step3",style: TextStyle(color: Colors.red),)),
      ]),
    );
  }
}
