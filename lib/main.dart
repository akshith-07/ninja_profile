import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
} 

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      //APP BAR
      appBar: AppBar(
        title: const Text("Ninja Id"),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        elevation: 0.0,
      ),

      //BODY

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.jpg'),
                radius: 60.0,
              ),
            ),
            const Divider(
              height: 90.0,
              color: Colors.black,
              thickness: 2.0,
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Akshith Jobirn S",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "NINJA RANK",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Jonin",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              "NINJA LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$ninjalevel',
              style: const TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  size: 35.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text("akshith2002jobirin@gmail.com",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18.0,
                    ))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
