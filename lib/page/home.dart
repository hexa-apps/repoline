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
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            elevation: 0,
            title: const Text('repoline'),
            actions: [
              IconButton(
                onPressed: () {
                  print('info');
                },
                icon: const Icon(
                  Icons.info,
                  color: Colors.white,
                ),
              )
            ]),
        body: createBody(context));
  }

  ListView createBody(BuildContext context) {
    return ListView(
      children: [
        ListTile(
            title: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.deepPurple,
                controller: usernameController,
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple)),
                    hintText: 'enter username',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple))),
                validator: (String? value) {
                  return value == null || value.isEmpty
                      ? 'please enter username'
                      : null;
                },
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple)),
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
                  child: const Text('get timeline'),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
