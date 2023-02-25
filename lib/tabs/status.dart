import 'package:flutter/material.dart';
import 'package:whatsapp/model/status_model.dart';

class status extends StatelessWidget {
  const status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 59.0,
                  // color: Colors.blue,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "asset/mla.jpg",
                          fit: BoxFit.cover,
                          height: 60,
                          width: 60,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.green,
                              border: Border.all(color: Colors.white)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: Text("My status"),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 250),
          child: Text(
            "Recent updates",
            style: TextStyle(
              color: Color.fromARGB(255, 127, 126, 126),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusdata.length,
            itemBuilder: (context, i) => Column(
              children: [
                Divider(),
                ListTile(
                  // leading: Container(
                  //   width: 90.0,
                  //   height: 90.0,
                  //   decoration: BoxDecoration(
                  //     color: Colors.red,
                  //     shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       fit: BoxFit.fill,
                  //       image: FileImage(
                  //         File(
                  //           statusdata[i].img,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // leading: ClipOval(
                  //   child: Image.asset(
                  //     statusdata[i].img,
                  //     height: 100,
                  //     width: 100,
                  //   ),
                  // ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      statusdata[i].img,
                    ),
                  ),
                  title: Text(statusdata[i].name),
                  subtitle: Text(statusdata[i].time),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
