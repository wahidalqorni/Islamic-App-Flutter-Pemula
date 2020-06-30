import 'package:flutter/material.dart';
import 'package:submission_flutter/detailsahabat.dart';
import 'package:submission_flutter/model/sabahat_list.dart';

class ListSahabat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text('10 Sahabat Nabi yang dijamin masuk Surga', style: TextStyle(fontSize: 15, fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: sahabatList.map((sahabat) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailSahabat(
                  sahabat: sahabat,
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
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        sahabat.nomor,
                        style: TextStyle(fontSize: 20, fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(6),
                      child: Text(
                        sahabat.nama,
                        style: TextStyle(fontSize: 20, fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
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

var sahabatList = [
  SahabatList(
    nomor: '#1',
    nama: 'Abu Bakar As-Siddiq r.a',
    deskripsi:
        'Lahir: 572 M, wafat: 23 Agustus 634 M/21 Jumadil Akhir 13 H. Termasuk di antara mereka yang paling awal memeluk Islam atau termasuk dalam golongan Assaabiquunal Awwaluun. Setelah Nabi Muhammad SAW wafat, Abu Bakar menjadi khalifah Islam yang pertama pada tahun 632 M hingga tahun 634 M. Lahir dengan nama Abdullah bin Abi Quhafah, ia adalah salah satu di antara empat khalifah yang diberi gelar Khulafaur Rasyidin atau khalifah yang diberi petunjuk.',
  ),
  SahabatList(
    nomor: '#2',
    nama: 'Umar bin Khattab r.a',
    deskripsi:
        '‘Umar bin Khattab berasal dari Bani Adi, salah satu rumpun suku Quraisy, suku terbesar di kota Mekkah saat itu. Ayahnya bernama Khattab bin Nufail Al Shimh Al Quraisyi dan ibunya Hantamah binti Hasyim, dari Bani Makhzum. ‘Umar bin Khattab memiliki julukan yang diberikan oleh Nabi Muhammad yaitu Al-Faruq yang berarti orang yang bisa memisahkan antara kebenaran dan kebatilan. Pada zaman jahiliyah keluarga ‘Umar tergolong dalam keluarga kelas menengah, ia bisa membaca dan menulis, yang pada masa itu merupakan sesuatu yang langka.',
  ),
  SahabatList(
    nomor: '#3',
    nama: '‘Ustman bin Affan r.a',
    deskripsi:
        'Utsman bin Affan berasal dari keturunan Bani Umayyah salah satu suku Quraisy yang banyak mewarnai sejarag perjalanan bangsa Arab di samping Bani Hasyim, baik sebelum kedatangan Islam maupun sesudah Rasulullah SAW diutus. \n Dalam syariah Islam, Utsman bin Affan dipilih sebagai  Khalifah ke tiga menggantikan Umar bin Khattab melalui sidang musyawarah formatur yang telah di bentuk dan ditetapkan anggotanya oleh khalifah Umar bin Khattab sebelum wafat. Ditetapkan Utsman bin Affan sebagai khalifah yang lain yaitu Abu Bakar al-Sidiq, Umar bin Khattab, maupun Ali bin Abi Thalib. \n Dalam masa pemerintahannya, dia berhasil melanjutkan perluasan wilayah yang telah dirintis sebelumnya oleh Umar bin Khattab, bahkan meluas sampai kewilayah-wilayah di  seberang lautan. Namun, dalam penataan sistem sosial ekonomi dan pemerintahan secara kuantitatif dianggap berhasil dan keberhasilannya itu tidak berarti, dikarenakan pengelolaannya tidak sesuai dengan peraturan-peraturan yang telah ditetapkan oleh Umar bin Khattab.',
  ),
  SahabatList(
    nomor: '#4',
    nama: 'Ali bin Abi Thalib r.a',
    deskripsi:
        'Ali bin Abi Thalib r.a dilahirkan di Mekkah, daerah Hijaz, Jazirah Arab, pada tanggal 13 Rajab. Menurut sejarawan, Ali dilahirkan 10 tahun sebelum dimulainya kenabian Nabi Muhammad saw, sekitar tahun 599 Masehi atau 600 Masehi (perkiraan). Usia Ali terhadap Nabi Muhammad masih diperselisihkan hingga kini, sebagian riwayat menyebut berbeda 25 tahun, ada yang berbeda 27 tahun, ada yang 30 tahun bahkan 32 tahun. \n Beliau bernama asli Haydar bin Abu Thalib. Ayah Haydar, yaitu Abu Thalib adalah salah seorang paman dari Nabi Muhammad saw. Haydar yang berarti Singa adalah harapan keluarga Abu Thalib untuk mempunyai penerus yang dapat menjadi tokoh pemberani dan disegani di antara kalangan Quraisy Mekkah.',
  ),
  SahabatList(
    nomor: '#5',
    nama: 'Saad bin Abi Waqqas r.a',
    deskripsi:
        'Ia berasal dari klan Bani Zuhrah dari suku Quraisy, dan paman Nabi Muhammad dari garis pihak ibu. Abdurrahman bin Auf, sahabat nabi yang lain, merupakan sepupu beliau. \n Saad lahir dan besar di kota Mekkah. Ia dikenal sebagai pemuda yang serius dan memiliki pemikiran yang cerdas. Sosoknya tidak terlalu tinggi namun bertubuh tegap dengan potongan rambut pendek. Orang-orang selalu membandingkannya dengan Singa Muda. Ia berasal dari keluarga bangsawan yang kaya raya dan sangat disayangi kedua orangtuanya, terutama ibunya. Meski berasal dari Makkah, ia sangat benci pada agamanya dan cara hidup yang dianut masyarakatnya. Ia membenci praktik penyembahan berhala yang membudaya di Makkah saat itu.',
  ),
  SahabatList(
    nomor: '#6',
    nama: 'Abdurrahman bin Auf r.a',
    deskripsi:
        'Abdurrahman bin Auf termasuk garda terdepan penerima ketauhidan yang dibawa oleh Rasulullah Saw yang biasa disebut dengan Assaabiquunal Awwaluun. Ia adalah sahabat Abu Bakar dan termasuk orang kelima yang di Islamkan olehnya. Sebagai seorang pengusaha, ia tidak apatus dengan peperangan. Ia mendapatkan 20 hujaman dan giginya rontok dalam perang Uhud. Ia menyadari, pengorbanan yang harus diberikan kepada Islam bukan hanya harta tetapi juga jiwa. \n Berhijrah ke Habasyah adalah salah satu tugasnya dalam menjalankan roda dakwah Rasulullah Saw. Sesungguhnya hijrah yang pertama dilakukan oleh kaum Muslimin adalah ke Habasyah. Mereka berpindah karena gangguan dari kaum musyrikin Quraisy yang semakin menjadi. Ada yang menganggap kepergiannya adalah refleksi dari kegentarannya menghadapi ujian keimanan. Namun, Allah Swt. Menjelaskan, hijrah adalah sesuatu yang diharuskan jika tantangan di tempat asal sudah sangat besar.',
  ),
  SahabatList(
    nomor: '#7',
    nama: 'Abu Ubaidah bin Jarrah r.a',
    deskripsi:
        'Abu Ubaidah bin al-Jarrah adalah Muhajirin dari kaum Quraisy Mekkah yang termasuk paling awal untuk memeluk agama Islam. Ia ikut berhijrah ke Habasyah (saat ini Ethiopia) dan kemudian, Ia hijrah ke Madinah. Ia mengikuti setiap pertempuran dalam membela Islam. Setelah wafatnya Nabi Muhammad s.a.w , Ia merupakan salah satu calon Khalifah bersama dengan Abu Bakar r.a dan Umar bin Khattab r.a. \n Setelah terpilihnya Abu Bakar r.a sebagai Khalifah, beliau ditunjuk untuk menjadi panglima perang memimpin pasukan muslim untuk berperang melawan Kekaisaran Romawi. Ia meninggal disebabkan oleh wabah penyakit.',
  ),
  SahabatList(
    nomor: '#8',
    nama: 'Thalhah bin Ubaidillah r.a',
    deskripsi:
        'Thalhah bin Ubaidillah, (wafat 36 H/ 656 M) adalah seorang sahabat nabi berasal dari Quraisy, nama lengkapnya adalah Thalhah bin Ubaidillah bin Utsman bin Amru bin Ka’ab bin Sa’ad bin Taim bin Murrah bin Ka’ab bin Lu’ai. Thalhah juga termasuk enam konsultan Nabi Muhammad s.a.w dan sepuluh orang yang dijanjikan masuk surga. \n Thalhah mengikuti Perang Uhud dan menderita luka parah yang luar biasa. Dia menggunakan dirinya menjadi perisai bagi Nabi Muhammad s.a.w dan mengalihkan panah yang akan menancap di diri Rasulullah s.a.w dengan tangannya sehingga semua jari-jarinya terputus. Sekalipun mengalami luka parah yang luar biasa, beliau akhirnya sembuh dan berumur panjang. Ia pada akhirnya meninggal dunia pada peperangan di zaman Sayidina Ali bin Abi Thalib r.a akibat terpanah, yaitu pada Perang Jamal.',
  ),
  SahabatList(
    nomor: '#9',
    nama: 'Zubair bin Awwam r.a',
    deskripsi:
        'Zubair bin Awwam adalah salah seorang sahabat yang mulia. Ia termasuk sepuluh orang yang dijamin masuk surga walaupun ia belum meninggal dunia. Ia salah seorang dari enam ahli syura, yang memusyawarahkan pengganti khalifah Umar bin Khattab, ini merupakan pengakuan terhadap keilmuan dan kematangannya. \n Di antara keistimewaan Zubair yang lainnya adalah ia turut serta dalam dua kali hijrah, hijrah ke Habasyah lalu menikah dengan putri Abu Bakar, Asma binti Abu Bakar radhiallahu ‘anha, kemudian ke Madinah dan mendapat anugerah putra pertama yang diberi nama Abdullah dan putra kedua Mush’ab radhiallahu ‘anhuma.',
  ),
  SahabatList(
    nomor: '#10',
    nama: 'Sa’id bin Zaid r.a',
    deskripsi:
        'Sa’id bin Zaid r.a adalah termasuk salah satu dari 10 sahabat yang dijamin masuk syurga. Wafat tahun 51 H / 671 M. Keislaman Sa’id bin Zaid r.a adalah berkah doa ayahnya yaitu Zaid bin Amr bin Nufail yang sepanjang hidupnya mencari kebenaran tapi tidak kesampaian untuk bertemu Nabi Muhammad saw yang baru diangkat menjadi Rasul. Ayahnya ini sangat membenci tradisi kaum Quraisy yang menyembah berhala dan sikap-sikap tidak terpuji lainnya. Zaid bin Amr sempat mempelajari Nasrani dan Yahudi, namun kedua agama itu tidak membekas di hatinya. Hingga suatu saat ketika beliau mencari kebenaran ke negeri Syam, beliau bertemu dengan seorang Rahib dan memberitahu bahwa seorang Nabi yang beliau cari akan muncul dari tempatnya, yaitu di bumi Arab.',
  ),
];
