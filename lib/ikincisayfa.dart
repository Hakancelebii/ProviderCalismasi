import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerkullanimi/sayacmodel.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa"),
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
            Consumer<SayacModel>(
                builder: (context,SayacModelNesne,child){
                  return ElevatedButton(onPressed: (){
                    SayacModelNesne.sayaciArttir();

                  }, child: Text("Sayaç Artır"),);
                }
            ),
            Consumer<SayacModel>(
                builder: (context,SayacModelNesne,child){
                  return ElevatedButton(onPressed: (){
                  SayacModelNesne.sayaciAzalt(2);
                  }, child: Text("Sayaç Azalt "),);
                }
            ),



          ],
        ),
      ),
    );
  }
}
