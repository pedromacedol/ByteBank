import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Transfer')),
          floatingActionButton: FloatingActionButton(
              onPressed: () {}, child: const Icon(Icons.add)),
        ),
      ),
    );
