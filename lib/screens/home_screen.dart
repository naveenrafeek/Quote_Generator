import 'package:flutter/material.dart';
import '../models/quote.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "Motivational";
  late Quote currentQuote;

  @override
  void initState() {
    super.initState();
    _fetchRandomQuote();
  }

  void _fetchRandomQuote() {
    final categoryQuotes = quotes.where((q) => q.category == selectedCategory).toList();
    if (categoryQuotes.isNotEmpty) {
      setState(() {
        currentQuote = (categoryQuotes..shuffle()).first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Random Quote Generator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedCategory,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedCategory = newValue;
                    _fetchRandomQuote();
                  });
                }
              },
              items: ["Motivational", "Inspirational", "Love", "History"]
                  .map<DropdownMenuItem<String>>(
                    (category) => DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(quote: currentQuote),
                ),
              ),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        '"${currentQuote.text}"',
                        style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "- ${currentQuote.author}",
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _fetchRandomQuote,
              child: const Text("New Quote"),
            ),
          ],
        ),
      ),
    );
  }
}
