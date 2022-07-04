import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zq/reusable/reuseable_component.dart';
<<<<<<< HEAD
import 'package:zq/screens/success.dart';

=======
import 'camscanner.dart';
>>>>>>> 54c762e29d2870d953137ad64b137a19b52aa432

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width:300,
          height: 50,
          child: ElevatedButton(
            child: const Text(
              "Connect",
              style: TextStyle(
                  fontSize: 40
              ),
            ),
            onPressed: () async {
<<<<<<< HEAD
              Socket socket =await Socket.connect('172.20.10.3', 8080);
              print('connected');
              // listen to the received data event stream
              socket.listen((List<int> event) {
                print(utf8.decode(event));
              });
              // send hello
              // socket?.add(utf8.encode('\nid : ${userEmail?.substring(0,9)}\n '+'name : $userName'));
              socket.add(utf8.encode('$userId'));
              // .. and close the socket
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Success()));
=======
              Socket socket =await Socket.connect('192.168.1.4', 8080);
              print('connected');
              // listen to the received data event stream
              socket?.listen((List<int> event) {
                print(utf8.decode(event));
              });
              // send hello
              socket?.add(utf8.encode('$userName'));
              // .. and close the socket  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CamScanner());
>>>>>>> 54c762e29d2870d953137ad64b137a19b52aa432
            },
          ),
        ),
      ),
    );
  }
}
