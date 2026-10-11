class DailyVerse {
  final String text;
  final String reference;

  const DailyVerse(this.text, this.reference);
}

// Curated set of well-known verses, rotated by day of year so the card
// changes once a day without needing a network call or backend endpoint.
const List<DailyVerse> _dailyVerses = [
  DailyVerse(
    'Karena begitu besar kasih Allah akan dunia ini, sehingga Ia telah mengaruniakan Anak-Nya yang tunggal, supaya setiap orang yang percaya kepada-Nya tidak binasa, melainkan beroleh hidup yang kekal.',
    'Yohanes 3:16',
  ),
  DailyVerse(
    'TUHAN adalah gembalaku, takkan kekurangan aku.',
    'Mazmur 23:1',
  ),
  DailyVerse(
    'Percayalah kepada TUHAN dengan segenap hatimu, dan janganlah bersandar pada pengertianmu sendiri.',
    'Amsal 3:5',
  ),
  DailyVerse(
    'Segala perkara dapat kutanggung di dalam Dia yang memberi kekuatan kepadaku.',
    'Filipi 4:13',
  ),
  DailyVerse(
    'Sebab Aku ini mengetahui rancangan-rancangan apa yang ada pada-Ku mengenai kamu, demikianlah firman TUHAN, yaitu rancangan damai sejahtera dan bukan rancangan kecelakaan, untuk memberikan kepadamu hari depan yang penuh harapan.',
    'Yeremia 29:11',
  ),
  DailyVerse(
    'Kita tahu sekarang, bahwa Allah turut bekerja dalam segala sesuatu untuk mendatangkan kebaikan bagi mereka yang mengasihi Dia.',
    'Roma 8:28',
  ),
  DailyVerse(
    'Inilah hari yang dijadikan TUHAN, marilah kita bersorak-sorak dan bersukacita karenanya.',
    'Mazmur 118:24',
  ),
  DailyVerse(
    'Kuatkan dan teguhkanlah hatimu, janganlah takut dan janganlah gentar, sebab TUHAN, Allahmu, menyertai engkau, ke manapun engkau pergi.',
    'Yosua 1:9',
  ),
  DailyVerse(
    'Tetapi carilah dahulu Kerajaan Allah dan kebenarannya, maka semuanya itu akan ditambahkan kepadamu.',
    'Matius 6:33',
  ),
  DailyVerse(
    'Allah adalah tempat perlindungan dan kekuatan kita, sebagai penolong dalam kesesakan sangat terbukti.',
    'Mazmur 46:1',
  ),
  DailyVerse(
    'Serahkanlah perbuatanmu kepada TUHAN, maka terlaksanalah segala rencanamu.',
    'Amsal 16:3',
  ),
  DailyVerse(
    'Janganlah takut, sebab Aku menyertai engkau, janganlah bimbang, sebab Aku ini Allahmu.',
    'Yesaya 41:10',
  ),
  DailyVerse(
    'Janganlah hendaknya kamu kuatir tentang apa pun juga, tetapi nyatakanlah dalam segala hal keinginanmu kepada Allah dalam doa dan permohonan.',
    'Filipi 4:6',
  ),
  DailyVerse(
    'Bergembiralah karena TUHAN, maka Ia akan memberikan kepadamu apa yang diinginkan hatimu.',
    'Mazmur 37:4',
  ),
  DailyVerse(
    'Jadi siapa yang ada di dalam Kristus, ia adalah ciptaan baru: yang lama sudah berlalu, sesungguhnya yang baru sudah datang.',
    '2 Korintus 5:17',
  ),
  DailyVerse(
    'Tetapi buah Roh ialah kasih, sukacita, damai sejahtera, kesabaran, kemurahan, kebaikan, kesetiaan, kelemahlembutan, penguasaan diri.',
    'Galatia 5:22-23',
  ),
  DailyVerse(
    'Iman adalah dasar dari segala sesuatu yang kita harapkan dan bukti dari segala sesuatu yang tidak kita lihat.',
    'Ibrani 11:1',
  ),
  DailyVerse(
    'TUHAN adalah terang dan keselamatanku, kepada siapakah aku harus takut?',
    'Mazmur 27:1',
  ),
  DailyVerse(
    'Sebab bagi Allah tidak ada yang mustahil.',
    'Lukas 1:37',
  ),
  DailyVerse(
    'TUHAN dekat kepada orang-orang yang patah hati, dan Ia menyelamatkan orang-orang yang remuk jiwanya.',
    'Mazmur 34:18',
  ),
  DailyVerse(
    'Janganlah kamu menjadi serupa dengan dunia ini, tetapi berubahlah oleh pembaharuan budimu.',
    'Roma 12:2',
  ),
  DailyVerse(
    'Sebab karena kasih karunia kamu diselamatkan oleh iman; itu bukan hasil usahamu, tetapi pemberian Allah.',
    'Efesus 2:8',
  ),
  DailyVerse(
    'Serahkanlah segala kekuatiranmu kepada-Nya, sebab Ia yang memelihara kamu.',
    '1 Petrus 5:7',
  ),
  DailyVerse(
    'Firman-Mu itu pelita bagi kakiku dan terang bagi jalanku.',
    'Mazmur 119:105',
  ),
  DailyVerse(
    'Nama TUHAN adalah menara yang kuat, ke sanalah orang benar berlari dan ia menjadi selamat.',
    'Amsal 18:10',
  ),
  DailyVerse(
    'Kata Yesus kepadanya: "Akulah jalan dan kebenaran dan hidup. Tidak ada seorang pun yang datang kepada Bapa, kalau tidak melalui Aku."',
    'Yohanes 14:6',
  ),
  DailyVerse(
    'Marilah kepada-Ku, semua yang letih lesu dan berbeban berat, Aku akan memberi kelegaan kepadamu.',
    'Matius 11:28',
  ),
  DailyVerse(
    'Aku bersyukur kepada-Mu oleh karena kejadianku dahsyat dan ajaib.',
    'Mazmur 139:14',
  ),
  DailyVerse(
    'Sebab Allah tidak memberikan kepada kita roh ketakutan, melainkan roh yang membangkitkan kekuatan, kasih, dan ketertiban.',
    '2 Timotius 1:7',
  ),
  DailyVerse(
    'Kuatkan dan teguhkanlah hatimu; janganlah takut, janganlah gentar, sebab TUHAN, Allahmu, menyertai engkau.',
    'Ulangan 31:6',
  ),
  DailyVerse(
    'Ajarlah kami menghitung hari-hari kami sedemikian, hingga kami beroleh hati yang bijaksana.',
    'Mazmur 90:12',
  ),
  DailyVerse(
    'Setiap pemberian yang baik dan setiap anugerah yang sempurna datangnya dari atas, diturunkan dari Bapa segala terang.',
    'Yakobus 1:17',
  ),
  DailyVerse(
    'Apa pun juga yang kamu perbuat, perbuatlah dengan segenap hatimu seperti untuk Tuhan dan bukan untuk manusia.',
    'Kolose 3:23',
  ),
  DailyVerse(
    'Bersukacitalah senantiasa. Tetaplah berdoa. Mengucap syukurlah dalam segala hal.',
    '1 Tesalonika 5:16-18',
  ),
  DailyVerse(
    'Sekalipun dagingku dan hatiku habis lenyap, gunung batuku dan bagianku tetaplah Allah selama-lamanya.',
    'Mazmur 73:26',
  ),
  DailyVerse(
    'Kekuatan dan kehormatan adalah pakaiannya, ia tertawa tentang hari depan.',
    'Amsal 31:25',
  ),
  DailyVerse(
    'Ia akan menghapus segala air mata dari mata mereka, dan maut tidak akan ada lagi.',
    'Wahyu 21:4',
  ),
  DailyVerse(
    'Di hadapan-Mu ada sukacita berlimpah-limpah, di tangan kanan-Mu ada nikmat senantiasa.',
    'Mazmur 16:11',
  ),
  DailyVerse(
    'Aku yakin sepenuhnya, bahwa Ia, yang memulai pekerjaan yang baik di antara kamu, akan meneruskannya sampai pada akhirnya.',
    'Filipi 1:6',
  ),
];

DailyVerse verseOfTheDay([DateTime? now]) {
  final date = now ?? DateTime.now();
  final startOfYear = DateTime(date.year, 1, 1);
  final dayOfYear = date.difference(startOfYear).inDays;
  return _dailyVerses[dayOfYear % _dailyVerses.length];
}
