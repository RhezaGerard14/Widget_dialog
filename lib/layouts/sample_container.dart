import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Container'),
      ),
      body: Container(
        width: double.infinity,
        height: 250,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blueAccent, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 2,
            color: Colors.blueGrey,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.stars,
                color: Colors.yellow,
                size: 50,
              ),
              const Text(
                'Hello, Dunia!',
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  wordSpacing: 10,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(height: 16), // Jarak antara teks dan tombol
              ElevatedButton(
                onPressed: () {},
                child: const Text('Press Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
