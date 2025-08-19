import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter Application',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _counter.toString(),
            style: TextStyle(
              color: Colors.purple,
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 32, color: Colors.purple),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_counter > 0) {
                        _counter--;
                      }
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 32, color: Colors.purple),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
