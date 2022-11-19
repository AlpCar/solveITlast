import 'package:flutter/material.dart';

class View1 extends StatefulWidget {
  @override
  _View1State createState() => _View1State();
}

class _View1State extends State<View1> {
  List<TextEditingController> _controllers = [];
  List<TextField> _fields = [];

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Dynamic Text Field"),
          ),
          body: Column(
            children: [
              _addTile(),
              Expanded(child: _listView()),
              _okButton(),
            ],
          )),
    );
  }

  Widget _addTile() {
    return ListTile(
      title: Icon(Icons.add),
      onTap: () {
        final controller = TextEditingController();
        final field = TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "name${_controllers.length + 1}",
          ),
        );

        setState(() {
          _controllers.add(controller);
          _fields.add(field);
        });
      },
    );
  }

  Widget _listView() {
    return ListView.builder(
      itemCount: _fields.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(5),
          child: _fields[index],
        );
      },
    );
  }

  Widget _okButton() {
    return ElevatedButton(
      onPressed: () async {
        String text = _controllers
            .where((element) => element.text != "")
            .fold("", (acc, element) => acc += "${element.text}\n");
        final alert = AlertDialog(
          title: Text("Count: ${_controllers.length}"),
          content: Text(text),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
        await showDialog(
          context: context,
          builder: (BuildContext context) => alert,
        );
        setState(() {});
      },
      child: Text("OK"),
    );
  }
}