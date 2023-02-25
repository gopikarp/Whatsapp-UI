import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/call.dart';
import 'package:whatsapp/tabs/group.dart';
import 'package:whatsapp/tabs/chat.dart';
import 'package:whatsapp/tabs/status.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.red),
      home: SafeArea(child: Myapp()),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  late TabController _tabctrl;
  @override
  void initState() {
    super.initState();
    _tabctrl = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 189, 124),
        title: const Text("Whatsapp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: _tabctrl,
          tabs: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Tab(
                height: 52,
                icon: Icon(Icons.groups_2_outlined),
              ),
            ),
            Tab(
              text: 'Chat',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Call',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabctrl,
        children: [
          group(),
          chat(),
          status(),
          call(),
        ],
      ),
      floatingActionButton: _tabctrl.index == 0
          ? SizedBox()
          : _tabctrl.index == 1
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.message),
                  backgroundColor: Colors.green,
                )
              : _tabctrl.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              color: Color.fromARGB(255, 2, 2, 2),
                            ),
                            backgroundColor: Color.fromARGB(255, 253, 255, 254),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.camera_alt),
                          backgroundColor: Colors.green,
                        ),
                      ],
                    )
                  : _tabctrl.index == 3
                      ? FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add_call),
                          backgroundColor: Colors.green,
                        )
                      : FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add_call),
                          backgroundColor: Color.fromARGB(255, 76, 92, 175),
                        ),
    );
  }
}
