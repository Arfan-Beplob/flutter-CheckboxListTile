import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckeBox(),
    );
  }
}
class CheckeBox extends StatefulWidget {
  const CheckeBox({Key? key}) : super(key: key);

  @override
  State<CheckeBox> createState() => _CheckeBoxState();
}
bool isChecked = false;
bool isBoxChecked = false;
class _CheckeBoxState extends State<CheckeBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
           child: Padding(
             padding: const EdgeInsets.all(10),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Transform.scale(
                     scale: 1.2,
                     child: CheckboxListTile(
                       activeColor: Colors.teal,
                       checkColor: Colors.white,
                       side: const BorderSide(color: Colors.cyan),
                       secondary: const Icon(Icons.umbrella,color: Colors.cyan,size: 50,),
                       controlAffinity:ListTileControlAffinity.leading,
                       title: const Text('CheckboxListTile'),
                       value: isChecked,
                       onChanged: (value) {
                         setState(()=> isChecked = value!);
                       },

          ),
                   ),
                 ),
                 Transform.scale(
                   scale: 1.2,
                   child: Checkbox(
                     value: isBoxChecked,
                     checkColor: Colors.white,
                     activeColor: Colors.green,
                     shape: const RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(
                         Radius.circular(5.0),
                       ),
                     ),
                     onChanged: (value) {
                       setState(()=> isBoxChecked = value!);
                     },
                   ),
                 ),
               ],
             ),
           )
      ),
    );
  }
}
