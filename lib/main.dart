import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerkullanimi/ikincisayfa.dart';
import 'package:providerkullanimi/sayacmodel.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> SayacModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false ,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Anasayfa(),
      ),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<SayacModel>(
                builder: (context,SayacModelNesne,child){
                  return Text("${SayacModelNesne.sayaciOku()}",style: TextStyle(fontSize: 36),);
                }
            ),
        ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> IkinciSayfa()));
        }, child: Text("Geçiş Yap"),)

          ],
        ),
      ),
    );
  }
}
