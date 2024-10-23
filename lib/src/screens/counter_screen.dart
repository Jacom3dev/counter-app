import 'package:counter_app/src/widgets/custoom_button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => {
              setState(() {
                clicks = 0;
              })
            }
          )
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$clicks',style: const TextStyle(fontSize: 160,fontWeight: FontWeight.w100)),
            Text(clicks>1?'Clicks':'Click',style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon:  Icons.refresh_rounded,
            onPressed: () {
              clicks = 0;
              setState(() {});
            }
          ),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one_rounded,
            onPressed: () {
              clicks++;
              setState(() {});
            }
          ),
          const SizedBox(height: 10),
           CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if(clicks<1) return;
              clicks--;
              setState(() {});
            }
          )
        ],
      )
    );
  }
}
