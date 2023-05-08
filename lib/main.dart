import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = 'Christian Darvin';
    String role = 'Flutter Developer';
    String phoneNumber = '09074023539';
    String email = 'myacc@gmail.com';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, fontFamily: 'DM Sans'),
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.teal,
        // appBar: AppBar(
        //   title: const Text('Material App Bar'),
        // ),
        body: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 68,
                      backgroundImage: AssetImage('images/dp.jpg'),
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    role,
                    style: const TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.white,
                        fontSize: 17,
                        letterSpacing: 2.5),
                  ),
                  const SizedBox(
                      width: 130,
                      child: Divider(
                        color: Colors.white,
                      )),
                  buildDetailCard(phoneNumber, Icons.local_phone_outlined),
                  buildDetailCard(email, Icons.email_outlined)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding buildDetailCard(String info, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: Card(
        child: ListTile(
          leading: Icon(
            iconData,
            color: Colors.black,
          ),
          title: Text(info),
        ),
      ),
    );
  }
}
