import 'dart:io';
/////dikdörtgen alanı/////
double dikdortgenAalni(double uzun, double kisa){
  return uzun*kisa;
}

/////iç içe fonksiyon/////
int carp(int a, int b) {
  //a değerini 2^(b-1) ile çarpan
  int multiplyByTwo(int x){
    return x*2; //Bu iç fonksiyonun görevi: Bana tek bir sayı ver (x), ben onu 2 ile çarpıp döndüreyim
  }
  int result=a; //Başlangıçta result sayımız a oluyor
  for(int i =0; i < b-1; i++){
    //i diye bir sayı başlat. 0’dan başlasın.
    // i, b - 1'den küçük olduğu sürece çalış.
    // Her turda i'yi 1 artır
    //fonksiyon, 0 ve 1 değerleriyle toplam 2 kere dönüyor:
    //başlangıç:a 1.tur:10 2.tur:20
    //Yapılacak işlem: 5 * 2^(3 - 1) = 5 * 2^2= 5 * 4 = 20
    result = multiplyByTwo(result);// 🔁 iç fonksiyonla çarpılıyor
  }

  return result; //sonucu döndür
}


/////LİSTE/////
void elemanSil(List<dynamic> liste, dynamic silinecek) {
  // remove metodu, listede varsa siler
  liste.remove(silinecek);
}


/////klas/////
class Sekil {     //Sekil; sınıfı, adı ve kenar sayısı olan bir kalıp
  //<aşağıda> main() içinde bu kalıptan farklı şekiller üretiyorsun.
  String ad;
  int kenarSayisi;

  Sekil(this.ad, this.kenarSayisi);
 // Bu bir constructor (yapıcı metot). Yeni bir şekil oluştururken ad ve kenar sayısını otomatik olarak atamanı sağlar.

  void bilgiVer() {     //Bu bir metot. Şekil hakkında bilgi verir.
    print("Şekil: $ad, Kenar Sayısı: $kenarSayisi");
  }
}


void main() {
  /////dikdörtgen alanı/////
  double alan= dikdortgenAalni(4.76, 9.54);
  print(alan);
  //veya//
  /*double uzun = 4.6;
  double kisa = 9.55;
  double alan = dikdortgenAlani(uzun, kisa);
  print('Dikdörtgenin alanı: $alan');*/

  /////iç içe fonksiyon/////
  //print(carp(5, 3)); ==
  int sonuc = carp(5, 3);
  //veya//
  /*int a = 5;
  int b = 3;
  int sonuc = carp(a, b);
  print("Sonuç: $sonuc");*/

  /////LİSTE/////
  List<String> aylar= ["ocak", "şubat", "mart","nisan","mayıs","haziran","temmuz"];
  print("Başlangıç listesi: $aylar");

  //removeAt(index) — İndex ile siler (pozisyona göre)
  aylar.removeAt(4);
  print("index ile silindi: $aylar");


  //remove(value) — Değerle/elemanla siler (örneğin "mayıs" ismini vererek)
  elemanSil(aylar, "mayıs");
  print('mayıs silindikten sonraki listeninin yeni hali: $aylar');


  /////klas/////
  Sekil ucgen = Sekil("Üçgen", 3);
  //Yeni bir Sekil nesnesi oluşturuyorsun. Adı "Üçgen", kenar sayısı 3
  Sekil kare = Sekil("Kare", 4);
  Sekil dikdortgen = Sekil("Dikdörtgen", 4);
  Sekil besgen = Sekil("Beşgen", 5);
  Sekil daire = Sekil("Daire", 0);

  // Nesneleri listeye alma: Tüm şekilleri bir listeye koyuyorsun. Böylece hepsiyle tek tek uğraşmadan çalışabilirsin.
  List<Sekil> sekiller = [ucgen, kare, dikdortgen, besgen, daire];

  for (var sekil in sekiller) {    //Listeyi dolaşan bir döngü başlatıyorsun
    sekil.bilgiVer();    //Her bir şekil için bilgiVer() metodunu çağırıyorsun. Yani ekrana bilgilerini yazdırıyorsun.
  }
}
