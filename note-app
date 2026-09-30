import "package:flutter/material.dart";

void main() {
  runApp(FirstProject());
}

class FirstProject extends StatelessWidget {
  const FirstProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ThemeData(
        primarySwatch: Colors.indigo,

        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: .bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
          ),
        ),
      ),

      home: Scaffold(
        backgroundColor: Colors.grey.shade50,

        // AppBar
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,

          leading: Icon(
            Icons.menu_book,
            size: 30,
          ),

          title: Text(
            "My Notes",
            style: TextStyle(
              fontSize: 24,
              fontWeight: .bold,
            ),
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 28,
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: .all(20),

            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 600,
              ),

              child: Column(
                crossAxisAlignment: .start,
                spacing: 15,

                children: [

                  // Header
                  Container(
                    width: .infinity,
                    padding: .all(20),

                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.indigo.shade400,
                          Colors.lightBlue.shade300,
                        ],
                      ),

                      borderRadius: .circular(15),
                    ),

                    child: Row(
                      children: [

                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,

                            children: [

                              Text(
                                "Small steps\nevery day lead to\nbig results.",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: .bold,
                                  color: Colors.white,
                                ),
                              ),

                              SizedBox(height: 12),

                              Text(
                                "Keep going! 🚀",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Icon(
                          Icons.menu_book,
                          size: 70,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // Add a New Note
                  Text(
                    "Add a New Note",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: .bold,
                      color: Colors.indigo.shade900,
                    ),
                  ),

                  // Title TextField
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Title",

                      prefixIcon: Icon(
                        Icons.description_outlined,
                        color: Colors.blueGrey,
                      ),

                      filled: true,
                      fillColor: Colors.white,

                      contentPadding: .symmetric(
                        vertical: 16,
                        horizontal: 15,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: .circular(12),
                        borderSide: BorderSide(
                          color: Colors.blueGrey.shade100,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: .circular(12),
                        borderSide: BorderSide(
                          color: Colors.blueGrey.shade100,
                        ),
                      ),
                    ),
                  ),

                  // Note TextField
                  TextField(
                    maxLines: 3,

                    decoration: InputDecoration(
                      hintText: "Write your note here...",

                      prefixIcon: Padding(
                        padding: .only(
                          bottom: 45,
                        ),

                        child: Icon(
                          Icons.edit,
                          color: Colors.blueGrey,
                        ),
                      ),

                      filled: true,
                      fillColor: Colors.white,

                      contentPadding: .all(16),

                      border: OutlineInputBorder(
                        borderRadius: .circular(12),
                        borderSide: BorderSide(
                          color: Colors.blueGrey.shade100,
                        ),
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: .circular(12),
                        borderSide: BorderSide(
                          color: Colors.blueGrey.shade100,
                        ),
                      ),
                    ),
                  ),

                  // Add Note Button
                  SizedBox(
                    width: .infinity,
                    height: 52,

                    child: ElevatedButton(
                      onPressed: () {
                        print("Add Note");
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: .circular(12),
                        ),
                      ),

                      child: Row(
                        mainAxisAlignment: .center,

                        children: [

                          Icon(
                            Icons.add,
                            size: 28,
                          ),

                          SizedBox(width: 10),

                          Text(
                            "Add Note",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: .bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  // Your Notes
                  Row(
                    mainAxisAlignment: .spaceBetween,

                    children: [

                      Text(
                        "Your Notes",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: .bold,
                          color: Colors.indigo.shade900,
                        ),
                      ),

                      Text(
                        "3 notes",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  // First Note
                  Container(
                    width: .infinity,
                    padding: .all(15),

                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: .circular(15),

                      border: Border(
                        left: BorderSide(
                          color: Colors.blue,
                          width: 6,
                        ),
                      ),
                    ),

                    child: Row(
                      children: [

                        Icon(
                          Icons.description,
                          color: Colors.blue,
                          size: 30,
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,

                            children: [

                              Text(
                                "Learn Flutter",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: .bold,
                                  color: Colors.indigo.shade900,
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                "Practice widgets and build real apps.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueGrey.shade700,
                                ),
                              ),

                              SizedBox(height: 7),

                              Text(
                                "Apr 23, 2025",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Icon(
                          Icons.more_vert,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),

                  // Second Note
                  Container(
                    width: .infinity,
                    padding: .all(15),

                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: .circular(15),

                      border: Border(
                        left: BorderSide(
                          color: Colors.green.shade400,
                          width: 6,
                        ),
                      ),
                    ),

                    child: Row(
                      children: [

                        Icon(
                          Icons.description,
                          color: Colors.green.shade500,
                          size: 30,
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,

                            children: [

                              Text(
                                "Study Dart",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: .bold,
                                  color: Colors.indigo.shade900,
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                "Focus on functions and collections.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueGrey.shade700,
                                ),
                              ),

                              SizedBox(height: 7),

                              Text(
                                "Apr 22, 2025",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Icon(
                          Icons.more_vert,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),

                  // Third Note
                  Container(
                    width: .infinity,
                    padding: .all(15),

                    decoration: BoxDecoration(
                      color: Colors.orange.shade50,
                      borderRadius: .circular(15),

                      border: Border(
                        left: BorderSide(
                          color: Colors.orange.shade400,
                          width: 6,
                        ),
                      ),
                    ),

                    child: Row(
                      children: [

                        Icon(
                          Icons.description,
                          color: Colors.orange.shade500,
                          size: 30,
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,

                            children: [

                              Text(
                                "Build Projects",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: .bold,
                                  color: Colors.indigo.shade900,
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                "Create useful and beautiful apps.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blueGrey.shade700,
                                ),
                              ),

                              SizedBox(height: 7),

                              Text(
                                "Apr 20, 2025",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Icon(
                          Icons.more_vert,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
