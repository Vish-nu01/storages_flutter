import 'package:flutter/material.dart';
import 'package:storages_flutter/Passing%20Data%20between%20Screens/to%20Stateful/statefulScreen.dart';
import 'package:storages_flutter/Passing%20Data%20between%20Screens/to%20Stateless/statelessSreen.dart';
void main(){
  runApp(MaterialApp(home: DataHome(),));
}
class DataHome extends StatelessWidget {
  String name = "Luminar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Passing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Screen2(name: name,place:"Kakkanad")));
                },
                child: const Text("to Stateless Screen")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Screen1(name: name,place:"Kakkanad")));
                }, child: const Text("to Stateful Screen")),
          ],
        ),
      ),
    );
  }
}