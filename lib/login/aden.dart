import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 23),
            child: Text('Profile'),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 21, 209, 219), Color.fromARGB(255, 113, 208, 218)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundColor: Colors.orange,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://adenrifai.files.wordpress.com/2021/04/20201004_104114.jpg?w=768'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'ADEN RIFAI',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          Column(children: <Widget>[
            const ListTile(
              title: Text(
                'Nama lengkap:',
                style: TextStyle(
                  color: Color.fromARGB(255, 11, 22, 176),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),  
              subtitle: Text(
                'ADEN AHMAD RIFAI',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Email:',
                style: TextStyle(
                  color: Color.fromARGB(255, 11, 22, 176),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'adenrifai01@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Pekerjaan:',
                style: TextStyle(
                color: Color.fromARGB(255, 11, 22, 176),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'project online',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const ListTile(
              title: Text(
                'Hobi:',
                style: TextStyle(
                color: Color.fromARGB(255, 11, 22, 176),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Mendaki Gunung,Menulis,Membaca',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.home, size: 16),
              label: const Text('Back to home'),
              onPressed: () => {Navigator.pop(context)},
            ),
          )
        ],
      ),
    );
  }
}