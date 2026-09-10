import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final Map<String, String> users = {
    'Rahul': 'rahul@gmail.com',
    'Amit': 'amit@gmail.com',
    'Priya': 'priya@gmail.com',
    'Neha': 'neha@gmail.com',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),

          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final entry = users.entries.elementAt(index);

              return ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),

                title: Text(entry.key),

                subtitle: Text(entry.value),

                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),

                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Delete"),

                          content: Text(
                            "Kya aap ${entry.key} ko delete karna chahte ho?",
                          ),

                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel"),
                            ),

                            TextButton(
                              onPressed: () {
                                setState(() {
                                  users.remove(entry.key);
                                });

                                Navigator.pop(context);
                              },

                              child: const Text(
                                "Delete",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}