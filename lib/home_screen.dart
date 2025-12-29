import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Profile', style: optionStyle),
    Text('Index 2: Kitaplar', style: optionStyle),
    Text('Index 3: Makaleler', style: optionStyle),
    Text('Index 4: Kurslar', style: optionStyle),
    Text('Index 5: Logout', style: optionStyle),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071739),
      appBar: AppBar(
        backgroundColor: const Color(0xFF071739),
        title: Text(
          widget.title,
          style: GoogleFonts.agbalumo(
            color: const Color(0xFFE3C39D),
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: const Color(0xFFE3C39D)),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Engineers",
              style: GoogleFonts.agbalumo(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF7FB6CB),
              ),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: const Color(0xFFC6AE8B),
                  ),
                  height: 141,
                  width: 128,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment(0, -0.5),
                            child: SizedBox(
                              width: 80,
                              height: 89,
                              child: ClipOval(
                                child: Image.asset(
                                  "images/user2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 82, 43, 28),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Color(0xFFC6AE8B),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Eng.jack",
                        style: GoogleFonts.agbalumo(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: const Color(0xFFC6AE8B),
                  ),
                  height: 141,
                  width: 128,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment(0, -0.5),
                            child: SizedBox(
                              width: 80,
                              height: 89,
                              child: ClipOval(
                                child: Image.asset(
                                  "images/user3.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 82, 43, 28),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Color(0xFFC6AE8B),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Eng.jack",
                        style: GoogleFonts.agbalumo(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: const Color(0xFFC6AE8B),
                  ),
                  height: 141,
                  width: 128,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment(0, -0.5),
                            child: SizedBox(
                              width: 80,
                              height: 89,
                              child: ClipOval(
                                child: Image.asset(
                                  "images/user4.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 82, 43, 28),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Color(0xFFC6AE8B),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Eng.jack",
                        style: GoogleFonts.agbalumo(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: const Color(0xFFC6AE8B),
                  ),
                  height: 141,
                  width: 128,
                  margin: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment(0, -0.5),
                            child: SizedBox(
                              width: 80,
                              height: 89,
                              child: ClipOval(
                                child: Image.asset(
                                  "images/user5.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 82, 43, 28),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Color(0xFFC6AE8B),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Eng.jack",
                        style: GoogleFonts.agbalumo(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Posts",
              style: GoogleFonts.agbalumo(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF7FB6CB),
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFE3C39D),
                  ),
                  width: 406,
                  height: 196,

                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: SizedBox(
                              height: 50,
                              width: 50,

                              child: ClipOval(
                                child: Image.asset(
                                  "images/user2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Eng.jack",
                            style: GoogleFonts.agbalumo(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Sizce yapay zekâ gelecekte programcıların yerini alacak mı? Bu konuda görüşünüz nedir?",
                          style: GoogleFonts.aDLaMDisplay(
                            fontSize: 12,
                            color: const Color(0xFF4B6382),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),

      drawer: Drawer(
        
        child: Container(
          color: const Color(0xFFE3C39D),
          child: ListView(
            
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: const Color(0xFFA68868)),
                child: Column(
                  children: [
                    Image.asset('images/user1.png', width: 100, height: 100),
                    SizedBox(height: 10),
                    Text('User Name'),
                  ],
                ),
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                selected: _selectedIndex == 0,
                onTap: () {
          
                  _onItemTapped(0);
                 
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_box_rounded),
                title: const Text('Profile'),
                selected: _selectedIndex == 1,
                onTap: () {
               
                  _onItemTapped(1);
              
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('kitaplar'),
                selected: _selectedIndex == 2,
                onTap: () {
                 
                  _onItemTapped(2);
                
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.article_rounded),
                title: const Text('makaleler'),
                selected: _selectedIndex == 3,
                onTap: () {
                
                  _onItemTapped(3);
                
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_collection_rounded),
                title: const Text('kurslar'),
                selected: _selectedIndex == 4,
                onTap: () {
                
                  _onItemTapped(4);
              
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_rounded),
                title: const Text('logout'),
                selected: _selectedIndex == 5,
                onTap: () {
                
                  _onItemTapped(5);
             
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
