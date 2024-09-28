# Beginning Student Language | Özet
Kursta kullanacağımız BSL (Lisp ya da Racket de denebilir) dili her bir ifadenin parantez içerisinde yazıldığı `prefix` bir dildir. Prefix ise matematikteki (2 + 3) operatörün ortada olduğu durumdan farklı olarak operatörün başta `(+ 2 3)` yazılmasıdır. 

İç içe ifadeler yazmak için de iç içe parantezler kullanılmaktadır. Matematikteki işlem önceliği burada da korunur ve daha içteki parantezler önce hesaplanır. Eğer içeride iki tane parantez varsa da işlem sırası soldan sağa doğrudur. 

`(/ 12 (* 2 3))`
ifadesi hesaplanırken en içteki parantez olan `(* 2 3)` hesaplanarak 6 olarak bulunur. Sonrasında ise `(/ 12 6)` işlemi yapılarak sonuç 2 olarak döndürülür. 

```
(+ 2 (* 5 2) (/ 40 10))
işlemi için öncelikle iç parantezler hesaplanır. 
Burada iki adet iç parantez olduğuna göre öncelikli olarak solda olan (* 5 2) 10 olarak hesaplanıp yerine yazılır, 
sonrasında sağdaki (/ 40 10) 4 olarak hesaplanır ve yazılır. En sonda da (+ 2 10 4) işlemi yapılarak 16 sonucu döndürülür

İşlem adımları
(+ 2 (* 5 2) (/ 40 10))
(+ 2 10 (/ 40 10))
(+ 2 10 4)
16

```

Programlama dilinin içerisinde hazır olarak gelen bazı fonksiyonlar da başa yazılmaktadır. Örneğin karekök alan sqrt (square root) fonksiyonu aşağıdaki gibi yazılır: 

```
(sqrt 9) 
(sqrt 16)
(sqrt (/ 50 2))
burada yine öncelikli olarak içerideki parantez hesaplanır ve 25 bulunur sonrasında karekök alma işlemi 25 için gerçekleştirilir. 
```

## Diziler (strings)
çift tırnak `"gokhan"`arasında yazılanlar dizi veri tiplerindedir. 

Dizileri birleştirmek için `string-append` fonksiyonu kullanılır. Burada dikkat edilmesi gereken şey verilen dizileri birleştirirken boşluk olmadan kendisi direkt olarak diğer dizinin sonuna eklemektedir. Eğer ki arada boşluk olmasını istersek bunu biz yerleştiriyoruz. 
    
    (string-append "Gokhan" "Gokcen") 
    GokhanGokcen

    (string-append "Gokhan" " " "Gokcen") 
    Gokhan Gokcen
`(string-length dizi)` bir dizinin kaç karakterden oluştuğunu döndürmektedir.

    (string-length "gokhan") 
    6


Dizileri bölmek istersek de `substring` fonksiyonu kullanılmaktadır. 3 parametre alır: Dizi, dizinin bölünmeye başlayacağı sırası, bitirileceği sıra. Index birçok dilde olduğu gibi bu dilde de 0'dan saymaya başlamaktadır. Son değer bölünmeye dahil değildir.

    (substring "Caribou" 2 4)
    "ri"

    (substring "gokhan" 3 6)
    "ha"

    (substring "0123456789" 2 4)
    "23"

## Görseller (images)
Öncelikle görselleri kullanabilmek için öncelikle bir kütüphaneye ihtiyacımız var: `(require 2htdp/image)` 

Çember çizdirmek için: 

    (circle <yarıçap> "solid" "renk")
    (circle 20 "solid" "red")

Dikdörtgen:

    (rectangle genislik uzunluk "outline" "renk")
    (rectangle 30 60 "outline" "blue")

Metin:

    (text "hello" 24 "orange")

* `above` dikey olarak sıralar
* `beside` yatay olarak sıralar
* `overlay` üzerine konumlandırır. 

## Değişken oluşturma
Değişken oluşturmak için `define` fonksiyonu kullanılır.

    (define UZUNLUK 400)
    (define KEDI <cat_img>)
    (define SAGKEDI (rotate -10 KEDI))

## Fonksiyon oluşturma 
Değişken oluşturmaya benzemektedir 

    (define (ikiyekatla sayi)
        (* sayi 2))

Yukarılda yazıldığı gibi `define` ile bir tanımlama işlemi yaptık. Sonrasında parantez içerisinde fonksiyonun ismi ve aldığı parametresi yazılır. Sonrasında da fonksiyonun gerçekleştireceği ifadeler gerçekleştirilir. 

    (define (noktaEkle karakterDizisi)
        (string-append karakterDizisi "."))

Burada da bir karakter dizisi alan ve sonuna nokta ekleyen noktaEkle fonksiyonu tanımlandı.

## Mantıksal işlemler (booleans and if expressions)
Elektronik devreler 0 (false, yanlış) ve 1 (true, doğru) ile çalışır. Her işlem bunlar cinsinden yazılabilir. Bu bölümde karşılaştırmaları da true-false değerleri üzerinden yapacağız. Bunları ifade etmenin en kolay yolu da 
* \> (büyüktür)
* < (küçüktür)
* = (eşittir)
* \>= (büyük eşittir) 
* <= (küçük eşittir) gibi ifadeler kullanmak.

    (define UZUNLUK 100)
    (define GENISLIK 100)
iki adet değişken oluşturduk. 
    (> UZUNLUK GENISLIK)
    uzunluk, genislikten büyük mü? hayır yani FALSE
    (>= UZUNLUK GENISLIK)
    uzunluk genislikten büyük ya da eşit mit? evet eşit yani TRUE

    (string=? "gokhan" "elma")
    "gokhan" dizisi ile "elma" dizisi aynı mı? hayır FALSE

Bunun gibi daha birçok değişken, parametre karşılaştırılabilir. 

### eğer - if 
    (if (< 3 15)    
        "küçük"      ;true ise dönecek değer
         "büyük")    ;false ise dönecek değer

DÖNECEK DEĞER: "küçük"

Burada da if yani eğer şöyle çalışıyor. Öncesinde bir karşılaştırma veriyoruz. Yukarıdaki örnekte 3, 15'ten küçük müdür karşılaştırılması yapılıyor. `Eğer` 3, 15'ten küçükse yani TRUE ise sonrasında yazdığımız ilk ifade gerçekleştiriliyor. Bu örnek için "küçük" yazdırıyor. Fakat `eğer` 3,15'ten küçük değilse else yani diğer olarak adlandırılan ikinci ifade dönüyor. Yine bu örnekte "büyük".

