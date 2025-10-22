import 'package:flutter/material.dart';
import '/birthday_simulator.dart';

 class BirthdayPage extends StatefulWidget {
     const BirthdayPage({super.key});

     @override
     State<BirthdayPage> createState() => _BirthdayPageState();

 }


 class _BirthdayPageState extends State<BirthdayPage>{
   final BirthdaySimulator simulator = BirthdaySimulator();
   int numPeople = 23;
   double probability = 0.0;
   bool loading = false;

   void runSimulation() async {

     setState(() => loading = true);
     await Future.delayed( const Duration (milliseconds: 100));
     double result = simulator.estimateProbability(numPeople, 10000);
     setState(() {
       probability = result;
       loading = false;
     });

   }

    @override
  Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(title:const Text('Birthday Paradox Simulator')),
       body: Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:[
               Text(
                 'Number of People:$numPeople',
                 style : const TextStyle (fontSize: 20),
               ),
               Slider(
                   value: numPeople.toDouble(),
                   min: 2,
                   max: 100,
                   divisions: 98,
                   label:'$numPeople',
                   onChanged: (val) => setState(()=> numPeople = val.toInt())
               ),
                 const SizedBox(height:20),
               ElevatedButton(onPressed: loading ? null :  runSimulation,
                   child: Text(loading ? 'Simulating...' : 'Run Simulation'),
               ),
               const SizedBox(height: 30),
               Text(
                 'Probability of shared birthday:\n${(probability * 100).toStringAsFixed(2)}%',
                 textAlign: TextAlign.center,
                 style: const TextStyle(fontSize: 22, fontWeight:FontWeight.bold),
               )

             ]
           )

       )
     );
  }

 }
