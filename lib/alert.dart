// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

void main(){

}
class AlertDialog extends StatelessWidget {
  const AlertDialog({super.key, required Text title, required List<Widget> actions, required Text content});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
       builder: (BuildContext context )=> AlertDialog(
       title:Text("Verification") 
       ,content: Text("Are you sure about your choices?"),
       actions:<Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
           child: Text('Cancel'))
           ,TextButton(
            onPressed:() {Navigator.pop(context, 'OK');} ,
            child: Text('OK'))
           
       ]
       )
       )
      ,child:const Text('verify'));
      

    
  }
}