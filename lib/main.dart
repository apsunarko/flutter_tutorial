import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: ProfileCard(),
  ));
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {

  //Define a State that could change here
  int yearsInNba = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('My Profile', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0, // get rid of shadow
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() { // this triggers the build function again
              yearsInNba += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          child: const Icon(Icons.add),

      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/usc-1.jpeg'),
                radius: 50,
              ),
            ),

            Divider(
              height: 60.0,
              color: Colors.grey[600],
            ),

            //////////////////////////////////////////////////

            const Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0),
            ),

            const SizedBox(height: 10.0,), // Trick to create space between widgets

            Text(
              'Kobe Bryant',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30.0,),

            //////////////////////////////////////////////////

            const Text(
              'Years in the NBA',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0),
            ),

            const SizedBox(height: 10.0,), // Trick to create space between widgets

            Text(
              '$yearsInNba',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30.0,),

            // row in a column
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),

                const SizedBox(width: 10.0,),

                Text(
                  'kobebryant@lakers.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 10.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}




