import 'package:flutter/material.dart';
import 'package:submission_flutter/detailteladan.dart';
import 'package:submission_flutter/model/teladan_list.dart';

class ListTeladan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text('Kisah Keteladan Rosulullah SAW', style: TextStyle(fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: teladanList.map((teladan) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailTeladan(
                  teladan: teladan,
                );
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        teladan.nomor,
                        style: TextStyle(fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        teladan.nama,
                        style: TextStyle(fontSize: 20, fontFamily: 'Robot', fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}

var teladanList = [
  TeladanList(
    nomor: '#1',
    nama: 'Kewaspadaan yang tinggi',
    deskripsi:
        'Rasullullah selalu berhati-hati atas apa yang beliau makan dan minum. Hal ini dikisahkan dalam kisah berikut ini : \n Pada suatu malam Aisyah RA mendapati Rasulullah SAW tidak bisa tidur dan hanyamembolak-balik tubuhnya diatas ranjang penuh dengan gelisah. Ia pun bertanya, “Wahai Rasulullah, mengapa tidak tidur semalaman?” Rasulullah lalu menjawab, “Hari ini aku menemukan sebuah kurma di tengah jalan, kemudian aku ambil buah itu dan memakannya karena aku pikir lebih baik dimakan daripada busuk dan terbuang sia-sia, sekarang aku merasa gelisah karena siapa tahu jika kurma yang kumakan itu termasuk harta sedekah.” \n Dari kisah tersebut kita dapat mengetahui bahwa Rasulullah SAW memiliki sifat yang hati-hati dan waspada akan sesuatu yang bukan menjadi miliknya.',
  ),
  TeladanList(
    nomor: '#2',
    nama: 'Sikap Rasul terhadap hamba sahaya',
    deskripsi:
        'Sebelum masuk Islam, seorang hamba sahaya Zaid dilahirkan sebagai seorang Nasrani. Saat ia masih kecil, ia ikut bepergian dengan ibunya dalam suatu kafilah namun segerombolan perampok menghadang mereka dan menculik Zaid. Ia kemudian di jaul dan jatuh ditangan Hakim dan ia menghadiahkan Zaid kepada Khadijah, isteri nabi Muhammad SAW. Setelah menikah dengan Rasul, Khadijah menghadiahkan Zaid kepada beliau. \n Suatu hari beberapa orang dari salah satu rombongan haji (baca syarat wajib haji) melihat Zaid berada di Mekah dan mengenalinya, kemudian mereka memberitahukan hal tersebut kepada ayah Zaid. Sang ayah yang sudah mencari anaknya kemana mana dan hampir putus asa kemudian pergi ke Mekah untuk melihat menjemput anaknya Zaid untuk pulang meskipun ia harus menebusnya. Saat tiba di Mekah, Rasul bertemu dengan ayah Zaid dan di mata sang ayah yang terlihat berduka menyentuh hati Rasulullah dan kemudian ia memerdekan Zaid tanpa syarat apapun. Meskipun demikian. Zaid menolak pergi dan ia berkata, “Aku tidak akan pergi, aku lebih mencintain engkau daripada ayah dan ibu kandungku sendiri.',
  ),
  TeladanList(
    nomor: '#3',
    nama: 'Perilaku Rasul terhadap orang lain',
    deskripsi:
        'Pada suatu hari seorang lelaki meminta ijin untuk berbicara kepada Nabi Muhammad. Kemudian beliau berkata pada Aisyah Ra untuk mengizinkannya masuk. Beliau juga menyampaikan “Biarkan dia masuk, orang ini dikenal orang yang paling buruk dikabilahnya,” kata Rasulullah. Kemudian Aisyah mengizinkannya masuk dan pria itu langsung duduk di depan Rasulullah SAW. Saat berbicara dengannya, Rasul bertutur kata ramah dan penuh perhatian. Hal ini membuat istri Rasul, Aisyah heran dan bertanya kepada beliau saat pria tersebut telah pergi. \n Aisyah bertanya kepada Rasulullah, “Engkau menganggap orang itu kasar dan buruk namun mengapa engkau berbicara dengannya dengan ramah dan lemah-lembut serta rasa hormat?”Rasulullah menjawab, “Aisyah, pria itu adalah orang yang paling buruk di dunia ini karena ia tidak mau bergaul dengan orang lain karena ia mengaggap orang lain lebih buruk darinya.”',
  ),
  TeladanList(
    nomor: '#4',
    nama: 'Tidak suka menyimpan harta dalam rumahnya',
    deskripsi:
        'Saat kondisi kesehatan Rasulullah semakin memburuk karena sakit yang beliau derita. Beliau bertanya pada Aisyah Ra tentang uang yang ia titipkan padanya sebelum ia sakit. Beliau lupa pernah menitipkan uang dan teringat saat sakit. Rasul bertanya dengan suara parau, “Aisyah, dimana uang yang pernah kutitipkan padamu sebelum sakit?” tolong kau bagikan uang itu di jalan Allah. Karena aku akan malu bertemu Allah SWT yang dicintai,sedangkan dirumahnya masih ada timbunan dan simpanan uang” \n Demikian kisah-kisah teladan Rasulullah pada saat ia hidup, masih banyak kisah lainnya yang menceritakan kemuliaan budi pekerti dan keteladannya. Semoga kita dapat menarik hikmah dari kisah-kisah Rasulullah ketika hidup dan mengaplikasikannya dalam kehidupan sehari-hari.',
  ),
  TeladanList(
    nomor: '#5',
    nama: 'Sifat Keikhlasan Nabi Muhammad Terhadap Pengemis Yahudi',
    deskripsi:
        'Di kota Madinah hiduplah seorang pengemis Yahudi yang buta. Pengemis itu biasa duduk di ujung pasar. Ia sangat membenci Nabi Muhammad SAW. Tak henti-hentinya ia mencaci maki Nabi dan mempengaruhi orang-orang yang lalu lalang di dekatnya. Ia berseru-seru, “Wahai saudaraku, berhati-hatilah dengan Muhammad. Dia pembohong besar dan tukang sihir !” \n Pada suatu pagi, Nabi Muhammad SAW mendatangi pengemis Yahudi tersebut dan membawakan makanan. Beliau menyuapi pengemis itu dengan penuh perhatian dan kelembutan. Karena pengemis itu buta, maka si pengemis itu tidak mengetahui siapa orang yang sedang menyuapinya tersebut. Ia tidak tahu bahwa orang yang selalu dicaci makinya, yaitu Nabi Muhammad SAW adalah orang yang saat itu sedang menyuapinya dengan sabar dan penuh keikhlasan. Hampir setiap pagi Nabi Muhammad SAW membawakan makanan untuk pengemis Yahudi tersebut dan menyuapinya dengan penuh kesabaran, walaupun harus selalu mendengarkan caci maki dari si pengemis tersebut terhadap dirinya. \n Sampai pada suatu hari, sepeninggal Nabi Muhammad SAW, salah satu sahabat Nabi, Abu Bakar Ash-Shiddiq mengunjungi rumah Aisyah, putrinya sendiri sekaligus juga adalah istri Nabi Muhammad SAW. Abu Bakar bertanya kepada Aisyah, “Wahai Aisyah anakku, adakah sunnah Nabi Muhammad SAW yang belum aku kerjakan ?” \n Siti Aisyah pun menjawab, “Wahai Ayahku, semua sunnah Nabi Muhammad SAW telah engkau kerjakan. Namun masih ada satu sunnah lagi yang belum Ayah laksanakan”. Abu Bakar merasa penasaran dan bertanya,”Apakah sunnah itu, wahai putriku?” \n “Setiap pagi Rasulullah selalu pergi ke pasar dan membawa makanan. Lalu makanan itu Beliau berikan kepada seorang pengemis Yahudi buta yang berada di sana.” Aisyah memberikan penjelasan kepada ayahnya. \n Keesokan harinya, Abu Bakar pergi ke pasar kota Madinah dengan membawa makanan. Setibanya di pasar, Abu Bakar mencari pengemis buta itu, dan berhasil menemukannya. Lalu Abu Bakar memberikan makanan dan menyuapi pengemis itu seperti yang dilakukan Nabi Muhammad SAW sebelumnya. Namun tiba-tiba pengemis buta itu berteriak marah, “Siapa Kamu ini ?” \n “Aku adalah orang yang biasa menyuapimu,” jawab Abu Bakar. \n “Tak mungkin ! Engkau bukanlah orang yang biasa menyuapiku. Orang yang selalu datang dan menyapiku adalah orang yang lemah lembut. Ia bahkan mengunyahkan makanan itu untukku !” \n Kemudian Abu Bakar berkata kepada pengemis itu, “Memang aku bukanlah orang yang biasa menyuapimu, karena orang yang biasa menyuapimu sudah tiada, beliau telah meninggal dunia. Tahukah kau, bahwa beliau adalah Nabi Muhammad SAW ?” \n Pengemis Yahudi itu pun sangat terkejut mendengarnya. “Benarkah ceritamu itu ? Selama ini aku selalu menghina dan memfitnahnya. Namun ia tidak pernah membalas penghinaanku. Bahkan ia malah membawakanku makanan setiap pagi. Sungguh mulia hatinya!” \n Setelah mengetahui bahwa Nabi Muhammad telah tiada, dan menyadari betapa selama ini Nabi Muhammad sangat mengasihi dan peduli padanya, pengemis Yahudi itupun menjadi sangat terharu dan tersentuh akan keindahan akhlak Nabi Muhammad SAW, hingga akhirnya pengemis Yahudi itupun memeluk agama Islam. Sebuah contoh teladan sifat ikhlas yang mulia dari sosok junjungan kita Nabi Muhammad SAW, dan berbuah kesadaran untuk memeluk agama Islam dari seorang yang tadinya sangat membenci Islam dan Nabi Muhammad SAW.',
  ),
];
