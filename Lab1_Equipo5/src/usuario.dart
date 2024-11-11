import 'package:flutter/material.dart';

class DetailDrinkScreen extends StatefulWidget {
  const DetailDrinkScreen({Key? key}) : super(key: key);

  @override
  _DetailDrinkScreenState createState() => _DetailDrinkScreenState();
}

class _DetailDrinkScreenState extends State<DetailDrinkScreen> {
  bool ingredientsChecked = true;
  bool glassChecked = true;
  bool feedbackChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Drink'),
        leading: const BackButton(),
      ),



    body: SafeArea(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, size: 60, color: Colors.white),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              'Detail Drink',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          buildDetailRow('Name Drink', ''),
          buildDetailRow('Description', ''),
          buildDetailRow('Origin', ''),
          buildCheckboxTile('Ingredients', ingredientsChecked, (value) {
            setState(() {
              ingredientsChecked = value!;
            });
          }),
          buildCheckboxTile('Glass', glassChecked, (value) {
            setState(() {
              glassChecked = value!;
            });
          }),
          buildCheckboxTile('Feedback', feedbackChecked, (value) {
            setState(() {
              feedbackChecked = value!;
            });
          }),
        ],
      ),
    ),
  ),
),


      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: 'List Drinks'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 18)),
          Text(value, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  Widget buildCheckboxTile(String label, bool isChecked, Function(bool?) onChanged) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
      title: Text(label, style: const TextStyle(fontSize: 18)),
      trailing: Checkbox(value: isChecked, onChanged: onChanged),
    );
  }
}
