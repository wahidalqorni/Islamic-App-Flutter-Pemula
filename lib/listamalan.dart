import 'package:flutter/material.dart';
import 'package:submission_flutter/detailamalan.dart';
import 'package:submission_flutter/model/amalan_list.dart';

class ListAmalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        title: Text('8 Amalan Rosulullah', style: TextStyle(
          fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.green[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: amalanList.map((amalan) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailAmalan(
                  amalan: amalan,
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
                        amalan.nomor,
                        style: TextStyle(fontSize: 20,fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        amalan.nama,
                        style: TextStyle(fontSize: 20,fontFamily: 'Roboto',
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

var amalanList = [
  AmalanList(
    nomor: '#1',
    nama: 'Membaca Dzikir Pagi dan Sore',
    deskripsi:
        '"Dan sebutlah (nama) Rabbmu dalam hatimu dengan merendahkan diri dan rasa takut dan dengan tidak mengeraskan suara di waktu pagi dan petang dan janganlah kamu termasuk orang-orang yang lalai." (QS al-Araf: 205).',
  ),
  AmalanList(
    nomor: '#2',
    nama: 'Merutinkan shalat Dhuha',
    deskripsi:
        'Nabi SAW bersabda: "Pada pagi hari setiap persendian kalian diwajibkan sedekah, setiap ucapan tasbih itu bernilai satu sedekah, setiap kalimat tahmid itu bernilai satu sedekah, satu ucapan tahlil bernilai satu sedekah, satu ucapan takbir bernilai satu sedekah. memerintah yang makruf satu sedekah, mencegah yang mungkar satu sedekah. Dan semua itu bisa diganti dengan dua rakaat shalat Dhuha." (HR Muslim).',
  ),
  AmalanList(
    nomor: '#3',
    nama: 'Shalat Berjamaah Tepat Waktu',
    deskripsi:
        'Saking pentingnya shalat berjamaah tepat waktu ini, sampai-sampai Nabi SAW bersabda: "Kalau saja manusia tahu pahala panggilan shalat dan shaf awal, kemudian mereka tidak bisa mendapatkannya selain harus dengan mengundi, pasti mereka akan mengundi." (HR Muslim)',
  ),
  AmalanList(
    nomor: '#4',
    nama: 'Menjaga Shalat Rawatib',
    deskripsi:
        'Dalam sebuah hadis disebutkan: "Tidaklah seorang hamba melakukan shalat sunah dengan ikhlas lillahitaala setiap hari sebanyak 12 rakaat melainkan pasti Allah akan membangunkan rumah di surga." (HR Muslim).',
  ),
  AmalanList(
    nomor: '#5',
    nama: 'Membaca Alquran',
    deskripsi:
        'Membaca Alquran adalah zikir terbaik yang akan mendatangkan banyak kebaikan bagi yang membacanya. Nabi SAW bersabda, "Bacalah Alquran karena sesungguhnya Alquran akan datang sebagai pemberi syafaat bagi sahabatnya (orang yang rajin membacanya)." (HR Muslim).',
  ),
  AmalanList(
    nomor: '#6',
    nama: 'Selalu berusaha dalam kondisi yang suci',
    deskripsi:
        'Tentang senantiasa suci ini, Nabi SAW pernah bersabda, "Siapa yang berwudhu dan membaguskan wudhunya, kesalahan-kesalahannya akan keluar dari jasadnya, bahkan sampai keluar dari ujung-ujung kukunya." (HR Muslim).',
  ),
  AmalanList(
    nomor: '#7',
    nama: 'Sedekah harian',
    deskripsi:
        '"Pernah suatu ketika, seorang lelaki datang menemui Rasulullah SAW dan bertanya, Wahai Nabi, sedekah apa yang paling utama? Nabi SAW menjawab, Bersedekahlah saat kau dalam kondisi sehat, kikir, takut miskin, dan sedang berharap menjadi kaya, tidak menunda sampai nyawa di tenggorokan baru kau berkata, Aku sedekahkan ini untuk si fulan segini, padahal itu sudah menjadi bagian si fulan (ahli warisnya)." (HR Bukhari).',
  ),
  AmalanList(
    nomor: '#8',
    nama: 'Istighfar Setiap Hari',
    deskripsi:
        'Tentang meminta ampun ini, Nabi SAW bersabda, "Demi Allah, aku selalu beristighfar dan bertobat kepada-Nya lebih dari 70 kali dalam sehari." (HR Muslim).',
  ),
];
