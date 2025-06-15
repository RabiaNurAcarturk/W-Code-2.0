void main() {
  /////////////////////a/////////////////////
  int mezuniyetYili= 2023;
  print("int değişkeni: $mezuniyetYili");

  String okul= 'Yazılım Dünyası';
  print("okul: $okul");

  double Gano= 3.44;
  print(Gano);

  bool yuksekLisans= false;
  print("Yükseğe başladın mı? -$yuksekLisans");

  dynamic atolye= false;
  //atolye= 'dersler devam ediyor';
  print(atolye);

  //char: char (character), bir tane karakteri tutan veri tipidir. Örneğin 'a', 'B', '9', '!' gibi tek bir karakter barındırır.
//Dart dilinde char veri tipi yoktur. Dart'ta tek bir karakter, aslında bir String veri tipidir. (Ama içinde sadece 1 karakter olur.)
String character= '9';
print(character);

/////////////////////b/////////////////////
//camelCase
//yukarıdaki variable'ler zaten camelCase olarak tanımlanmıştır

//snake_case
int mezuniyet_baslangici= 2019;
print(mezuniyet_baslangici);

String okul_adi= "Kodluyoruz";
print(okul_adi);

bool master_baslandi_mi= false;
print(master_baslandi_mi);

//PascalCase
int OkulaBaslamaYili= 2019;
print("okula başlama yılı: $OkulaBaslamaYili");

String UniversiteAdi= "w-code";
print(UniversiteAdi);

bool LisansUstu= false;
print(LisansUstu);

/////////////////////c/////////////////////
String adim="Rabia Nur";
String soyadim= "ACARTÜRK";
int yasim=25;
bool resitMiyim=true;
print("Merhaba ben $adim $soyadim, $yasim yaşındayım. Reşitlik durumum: $resitMiyim");

}