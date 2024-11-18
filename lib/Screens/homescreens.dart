import 'package:flutter/material.dart';
import 'newnotescreens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyNotes'),
      ),
      body: notes.isEmpty
          ? Center(child: Text("Notes saved will be displayed here"))
          : ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notes[index]['title'] ?? ''),
            subtitle: Text(notes[index]['description'] ?? ''),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newNote = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewNoteScreen()),
          );
          if (newNote != null) {
            setState(() {
              notes.add(newNote);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
