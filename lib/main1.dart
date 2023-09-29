import 'package:flutter/material.dart';

void main() {
  runApp(const BiodataFormApp());
}

class BiodataFormApp extends StatelessWidget {
  const BiodataFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiodataForm(),
    );
  }
}

class BiodataForm extends StatefulWidget {
  const BiodataForm({super.key});

  @override
  _BiodataFormState createState() => _BiodataFormState();
}

class _BiodataFormState extends State<BiodataForm> {
  // Define variables to store biodata information
  String name = '';
  String age = '';
  String gender = '';
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Age'),
              onChanged: (value) {
                setState(() {
                  age = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Gender'),
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Address'),
              onChanged: (value) {
                setState(() {
                  address = value;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter anything you want",
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: S9ave biodata information or perform other actions
                print('Name: $name');
                print('Age: $age');
                print('Gender: $gender');
                print('Address: $address');
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
