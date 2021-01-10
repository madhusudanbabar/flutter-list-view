import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "List View",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB pressed");
          },
          child: Icon(Icons.add_circle_outline),
          tooltip: "Add",
          backgroundColor: Colors.pink,
        ),
        appBar: AppBar(title: Text("list view"), backgroundColor: Colors.pink),
        body: getList(),
      ),
    ));

Widget getList() {
  var items = List<String>.generate(9, (index) => "Item $index");
  return ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(items[index]),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.delete_forever),
        onTap: () {
          showSnackbar(context, index);
        },
      );
    },
    itemCount: items.length,
  );
}

Widget showSnackbar(BuildContext context, int index) {
  var snackbar = SnackBar(
    content: Text("$index clicked"),
    action: SnackBarAction(
      label: "undo",
      onPressed: () {
        debugPrint("undo clicked");
      },
    ),
  );

  Scaffold.of(context).showSnackBar(snackbar);
}
