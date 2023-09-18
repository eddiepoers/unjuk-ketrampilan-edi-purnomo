import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Unjuk Ketrampilan",
      home: Page1(),
    )
  );
}

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
         body: Column(
          children: [
            Text("Ini adalah page 1"),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Page2())
                );
              }, 
              child: Text("Ke halaman 2")
            )
          ],
         ),
      ),
    );
  }

}

class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
         body: Column(
          children: [
            Text("Ini adalah page 2"),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Kembali ke halaman 1")
            )
          ],
         ),
      ),
    );
  }

}

