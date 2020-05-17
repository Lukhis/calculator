import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Cupu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int hasilHitung = 0;

  TextEditingController angka1 = TextEditingController ();
  TextEditingController angka2 = TextEditingController ();

  penjumlahan(){
    setState(() {
          hasilHitung =int.parse(angka1.text)+int.parse(angka2.text);
    });
  }

  pengurangan(){
    setState(() {
          hasilHitung =int.parse(angka1.text)-int.parse(angka2.text);
    });
  }

  perkalian(){
    setState(() {
          hasilHitung =int.parse(angka1.text)*int.parse(angka2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Cupu"),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Masukkan Angka operant', style: TextStyle(fontSize:25.0)),
            SizedBox(height:100.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget> [
                // InkWell(
                //   onTap: () {
                //     penjumlahan();\
                //   },
                
                //child: Container(
                  TextFormField ( //'1', style: TextStyle(fontSize: 35.0)),
                  // padding: EdgeInsets.all(18.0),
                  controller: angka1,
                  decoration: InputDecoration(
                  hintText: 'Masukkan Angka Pertama',
                  )
                  ),
                //),
            
              TextFormField (
                  controller: angka2,
                  decoration: InputDecoration(
                  hintText: 'Masukkan Angka Kedua',
                  )
                  ),


                /*Container(
                  child: Text("2", style: TextStyle(fontSize:35.0)),
                  padding: EdgeInsets.all(18.0)
                ),

                Container(
                  child: Text("3", style: TextStyle(fontSize:35.0)),
                  padding: EdgeInsets.all(18.0)
                ), */

            //   ]
            // ),
            
          SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                MaterialButton(
                  color:Colors.lime,
                  child: Text('Tambah', style: TextStyle(fontSize:25.0)),
                  onPressed: () {
                    penjumlahan();
                  },
                ),

                MaterialButton(
                  color:Colors.lime,
                  child: Text('Kurang', style: TextStyle(fontSize:25.0)),
                  onPressed: () {
                    pengurangan();
                  },
                ),

                
              ],
            ),
          SizedBox(height:20.0),
          Text('HASIL='+ hasilHitung.toString(), style: TextStyle(fontSize:25.0)),

          ],
        ),
      ),
      
    );
  }
}
