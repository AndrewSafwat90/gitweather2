import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
              child: TextField(
            onSubmitted: (value) {},
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                labelText: "Search",
                suffixIcon: Icon(Icons.search),
                hintText: "Enter City Name",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          )),
        ));
  }
}
