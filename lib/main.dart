import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi primer app'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(5),
        child: Column(children: [
          Text('San Francisco', style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.w500),),
          Text('Nublado', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
          Row(children: [
            Icon(Icons.cloud, color: Colors.lightBlue, size: 100,),
            Text('19 C', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 48))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,),
          Align(
            child: MaterialButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Actualizando datos del clima")));
            }, child: 
            Text('Actualizar datos', style: TextStyle(color: Colors.black)),color: Colors.yellow,)
          , alignment: Alignment.center,)
        ],
        crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min,)
      ),
    );
  }
}