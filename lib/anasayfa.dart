import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}


//left-start
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi =MediaQuery.of(context);

    final double ekranYuksekligi =ekranBilgisi.size.height;
    final double ekranGenisligi =ekranBilgisi.size.width;

    print("ekran yükseklği: $ekranYuksekligi");
    print("ekran genişiği : $ekranGenisligi");



    var d = AppLocalizations.of(context);



    return Scaffold(
      appBar: AppBar(
        title:  Text("PİZZA",style: TextStyle(color: yaziRenk1,fontFamily: "Pacifico",fontSize: ekranGenisligi/19) ,),
      backgroundColor: anaRenk,
        centerTitle: true,
    ),
      body:Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: ekranYuksekligi/43),
            child: Text(d!.pizzaBaslik,style: TextStyle(fontSize: 36,color: anaRenk,fontWeight:
            FontWeight.bold,),),
          ),

          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Image.asset("resimler/pizza1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top:16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                chip(icerik: d.peynirYazi),
                chip(icerik: d.sucukYazi),  //stless ile kısa yoldan oluşturduk
                chip(icerik: d.zeytinYazi),    //83.satır
                chip(icerik: d.biberYazi),

                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure,style: TextStyle(fontSize: 22,color: yaziRenk2,fontWeight: FontWeight.bold,),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.teslimatBaslik,style: TextStyle(fontSize: 22,color: anaRenk,fontWeight: FontWeight.bold,),),
                ),
                Text(d.pizzaAciklama,style: TextStyle(fontSize: 20,color: yaziRenk2,fontWeight: FontWeight.bold,),),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(d.fiyat,style: TextStyle(fontSize: 44,color: anaRenk,fontWeight:
                FontWeight.bold,),),
                   const Spacer(),

                   SizedBox(width: ekranGenisligi/2,height: ekranYuksekligi/14,

                       child: TextButton(onPressed: (){},
                       child: Text(d.buttonYazi,style: TextStyle(color: yaziRenk1,fontSize: 18),),

                         style: TextButton.styleFrom(
                         backgroundColor: anaRenk,
                         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                   ),
                   ),
              ],
            ),
          )


    ],
      ),
    );
  }
}

class chip  extends StatelessWidget {
  String icerik;
  chip({ required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );

  }
}
