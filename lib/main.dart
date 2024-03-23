import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget> [
            Column(
              children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/download (1).png'),
                        ),
                        title: Text(
                          'Welcome',
                          style: TextStyle(color: Colors.grey),
                        ),
                        subtitle: Text(
                          'Raj Gupta',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search bike',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black)),
                          width: 130,
                          child: Center(child: Text('Adventure', style: TextStyle(fontSize: 24))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.white)),
                          width: 130,
                          child: Center(child: Text('Cruiser',
                              style: TextStyle(fontSize: 24,color: Colors.white))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black)),
                          width: 130,
                          child: Center(child: Text('Sportsbike', style: TextStyle(fontSize: 24))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black)),
                          width: 100,
                          child: Center(child: Text('Tourer', style: TextStyle(fontSize: 24))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black)),
                          width: 130,
                          child: Center(child: Text('Superbike',style: TextStyle(fontSize: 24),)),
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'Items',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        for (int i = 0; i < 4; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    i == 0
                                        ? 'assets/images/Meteore.jpeg'
                                        : i == 1
                                        ? 'assets/images/Scout Bobber.jpeg'
                                        : i == 2
                                        ? 'assets/images/Rebel 1100.jpeg'
                                        : 'assets/images/Hayabusa.jpeg',
                                    height: 140,
                                    width: 140,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    i == 0
                                        ? 'Meteore'
                                        : i == 1
                                        ? 'Scout Bobber'
                                        : i == 2
                                        ? 'Rebel 1100'
                                        : 'Hayabusa',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    i == 0
                                        ? 'Royal Enfield'
                                        : i == 1
                                        ? 'Indian'
                                        : i == 2
                                        ? 'Honda'
                                        : 'Suzuki ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    i == 0
                                        ? '699/per day'
                                        : i == 1
                                        ? '1499/per day'
                                        : i == 2
                                        ? '1199/per day'
                                        : '1599/per day',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Recently ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'viewed',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                      ),
                    ),

                  ],
                ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        List<String> titles = ['Hayabusa', 'Classic 350', 'Ninja ZX-10r', 'KTM'];
                        List<String> prices = ['2000/per day', '1500/per day', '2000/per day', '2500/per day'];
                        List<String> cornerTexts = ['Available', 'Booked', 'Available', 'Available'];
                        List<String> imagePaths = [
                          'assets/images/Hayabusa.jpeg',
                          'assets/images/Clasic.jpeg',
                          'assets/images/Ninja ZX-10r.jpeg',
                          'assets/images/KTM.jpeg',
                        ];

                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(imagePaths[index]),
                            ),
                            title: Text(titles[index]),
                            subtitle: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(prices[index],
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black87)),
                              ],
                            ),
                            trailing: Container( decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),color: Colors.black87,
                                border: Border.all(color: Colors.black)),
                              height: 20,
                              child: Text(
                                cornerTexts[index],
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),

              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Add your onPressed action here
                },
              ),
              IconButton(
                icon: Icon(Icons.map),
                onPressed: () {
                  // Add your onPressed action here
                },
              ),
              IconButton(
                icon: Icon(Icons.wallet),
                onPressed: () {
                  // Add your onPressed action here
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Add your onPressed action here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
