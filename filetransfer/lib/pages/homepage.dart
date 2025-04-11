import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Text(
                "Hi, Florian",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            //Card one
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width-80,
              decoration: BoxDecoration(
                color: Color(0xFF8fdbff),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Text("2%", style: TextStyle(fontWeight: FontWeight.bold),))
                        ),
                        Text(
                          "Send", 
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("lib/assets/sendImage.png"),
                    ),
                  )
                ],
              ),
            ),
        
            SizedBox(height: 20),
        
            //Card two
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width-80,
              decoration: BoxDecoration(
                color: Color(0xFF012459),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Text("12", style: TextStyle(fontWeight: FontWeight.bold),))
                        ),
                        Text(
                          "Receive", 
                          style: TextStyle(
                            color: Color(0xFF8fdbff),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("lib/assets/receivedImage.png"),
                    ),
                  )
                ],
              ),
            ),
            
            SizedBox(height: 20),
        
            //Listview with recent items here
            Container(
              width: MediaQuery.of(context).size.width-80,
              decoration: BoxDecoration(
                color: Color(0xFFedf0f2),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Text("Recent Items"),
                  ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => MyTile(myTitle: "Title $index", mySubStitle: "Subtitle $index", imagePath: "lib/assets/itemImage.png"),
                  )
                ]
              )
              
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: (){}, 
        backgroundColor: Color(0xFF8fdbff),
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.primary)
      ),
    );
  }
}


// ignore: must_be_immutable
class MyTile extends StatelessWidget {
  String myTitle;
  String mySubStitle;
  String imagePath;
  MyTile({
    required this.myTitle,
    required this.mySubStitle,
    required this.imagePath,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: Text(myTitle),
      subtitle: Text(mySubStitle),
    );
  }
}