import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({super.key});

  @override
  State<StepperPage> createState() => _StepperPageState();
}

// Le widget Stepper en Flutter permet de créer une interface utilisateur
// pour des étapes ou des étapes de processus, souvent utilisée pour guider
// un utilisateur à travers une séquence d'actions ou de formulaires.

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
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(steps: [
        Step(
            isActive: _currentStep >= 0,
            title: Text("step1"),
            content: Text(
              "information for step1",
              style: TextStyle(color: Colors.red),
            )),
        Step(
            isActive: _currentStep >= 1,
            title: Text("step1"),
            content: Text(
              "information for step2",
              style: TextStyle(color: Colors.red),
            )),
        Step(
            isActive: _currentStep == 2,
            title: Text("step1"),
            content: Text(
              "information for step3",
              style: TextStyle(color: Colors.red),
            )),
      ],
      onStepTapped: (value) {
        setState(() {
          _currentStep = value ;
        });
      },
        currentStep: _currentStep,
        onStepContinue: () {
          if(_currentStep != 2){
           setState(() {
             _currentStep+=1;
           });
          }
        },
        onStepCancel: () {
          if(_currentStep != 0){
            setState(() {
              _currentStep-=1;
            });
          }
        },
        type: StepperType.horizontal,
      ),
    );
  }
}
