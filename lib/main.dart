import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0F14),
      
      //APP BAR
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Beranda",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text("GM"),
          ),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 16),
          Icon(Icons.more_horiz),
          SizedBox(width: 12),
        ],
      ),

      //BODY
      body: Column(
        children: [
          const SizedBox(height: 20),

          //MENU GRID
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MenuItem(
                  icon: Icons.videocam,
                  label: "Rapat",
                  color: Colors.orange,
                ),
                MenuItem(
                  icon: Icons.add,
                  label: "Bergabung",
                  color: Colors.blue,
                ),
                MenuItem(
                  icon: Icons.calendar_today,
                  label: "Jadwalkan",
                  color: Colors.blue,
                ),
                MenuItem(
                  icon: Icons.upload,
                  label: "Bagikan",
                  color: Colors.blue,
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          //TEXT
          const Text(
            "Tambahkan kalender",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
        ],
      ),

      //BOTTOM NAV
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF11161C),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "Obrolan Tim",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: "Docs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "Papan Tulis",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "Lainnya",
          ),
        ],
      ),
    );
  }
}class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const MenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}