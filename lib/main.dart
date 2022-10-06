import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int startIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),
        body: Center(
          child: startIndex==0? Container(
            width:double.infinity, 
            height: double.infinity, 
            color: Colors.yellow, 

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.brown               

                  ),
                  onPressed: () {
                    setState(() {
                      buttonName = 'Hello Calmerita';
                    });
                  },
                  child: Text(buttonName),
                ),
                 
              
              ],
            ),
          ): Image.asset('images/a.jpeg')
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            )
          ],
          currentIndex: startIndex,
          onTap: (int index) {
            setState(() {
              startIndex = index;
            });
          },
        ),
      ),
    );
  }
}
