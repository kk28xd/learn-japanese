import 'package:flutter/material.dart';

import 'pages/HomePage.dart';

class CutsumSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_outlined));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("data");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                showResults(context);
              },
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(names[i], style: const TextStyle(fontSize: 20)),
                ),
              ),
            );
          });
    } else {
      filter = names.where((element) => element.contains(query)).toList();
      return ListView.builder(
          itemCount: filter!.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                showResults(context);
              },
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(filter![i], style: const TextStyle(fontSize: 20)),
                ),
              ),
            );
          });
    }
  }
}
