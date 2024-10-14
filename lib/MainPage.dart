import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> pageName = ["WhatsApp", "Updates", "Communities", "Calls"];
  
  int item_index = 0;
  List<Icon> floatingActionButton = [Icon(Icons.chat), Icon(Icons.camera)];
  void Selected_index(int index) {
    setState(() {
      item_index = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(pageName[item_index], style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.update_sharp), label: "Update"),
          BottomNavigationBarItem(
              icon: Icon(Icons.group), label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.green[100]),
        currentIndex: item_index,
        type: BottomNavigationBarType.fixed,
        onTap: Selected_index,
      ),
    );
  }
}
