// ignore_for_file: unnecessary_const, dead_code, unused_label

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation',
    home: WelcomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 62, 51),
        centerTitle: true,
        title: const Text(
          "Welcome Cherished Customer."
         ) ),
      );
      body: Center(
        child:ElevatedButton(
          child: const Text('Finish'),
          //Input an alert box when fininsh is pressed!
          //if finishIs=true,then show your delivery is on the way,else go back to text field
          onPressed: (){
            Navigator.push(context,  AlertDialog as Route<Object?>);
          }, 
        )
      );
  }
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal:7,vertical: 14),
          child: TextField(
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              hintText: "Enter Adress",
            ),
          ),
        ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7,vertical:14),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Password",
          ),
        ),)
      ]
    );
  }
}
class AlertDialog extends StatelessWidget {
  const AlertDialog({super.key, required Text title, required List<Widget> actions, required Text content});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
       builder: (BuildContext context )=> AlertDialog(
       title:const Text("Verification") 
       ,content: const Text("Are you sure about your choices?"),
       actions:<Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
           child: const Text('Cancel'))
           ,TextButton(
            onPressed:() {Navigator.pop(context, 'OK');} ,
            child: const Text('OK'))    
       ]
       )
       )
      ,child:const Text('verify'));
  }
}











