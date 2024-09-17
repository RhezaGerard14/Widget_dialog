import 'package:flutter/material.dart';

class MyColumnsRows extends StatelessWidget {
  const MyColumnsRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: const Text('Belajar Columns & Row'),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  color: Colors.cyan,
                  child: const Icon(Icons.star, color: Colors.white),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 50,
                  color: Colors.red,
                  child: const Icon(Icons.star, color: Colors.white),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Green Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Red Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.black,
              child: const Center(
                child: Text(
                  'Black Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
