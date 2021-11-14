import 'package:flutter/material.dart';

import 'timeline.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'repoline',
            style:
                TextStyle(fontFamily: 'SpaceMono', fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline,
              ),
            )
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
        ),
        body: createBody(context));
  }

  ListView createBody(BuildContext context) {
    return ListView(
      children: [
        ListTile(
            title: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                // ignore: prefer_const_constructors
                style: TextStyle(fontFamily: 'SpaceMono'),
                cursorColor: Colors.black87,
                controller: usernameController,
                decoration: const InputDecoration(
                    hintStyle: TextStyle(fontFamily: 'SpaceMono'),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    hintText: 'enter username',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87))),
                validator: (String? value) {
                  return value == null || value.isEmpty
                      ? 'please enter username'
                      : null;
                },
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // ignore: prefer_const_constructors
                      side: BorderSide(color: Colors.black87, width: 1),
                      elevation: 0,
                      primary: Colors.white),
                  onPressed: () async => {
                    if (_formKey.currentState!.validate())
                      {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (BuildContext ctx) => TimeLinePage(
                                    username: usernameController.text)))
                            .then((value) => usernameController.clear())
                      }
                  },
                  child: const Text(
                    'get timeline',
                    style: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'SpaceMono',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
