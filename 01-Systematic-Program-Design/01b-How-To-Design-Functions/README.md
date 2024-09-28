# How To Design Function - Fonksiyonları nasıl tasarlarsın? | Özet

Fonksiyonun tasarımında temelde  adet parçaya ihtiyacımız var:
1. Bu fonksiyon ne tür bir değişken kullanıyor ve işlemler sonucunda ne tür bir değişken döndürüyor? 
2. Fonksiyonun ne yaptığını açıklayan kısa bir açıklama
3. Fonksiyonun girdisini ve çıktısını basitçe belirleyen bir taslak taslağı, "stub"
4. Stub'ın syntax'ına uygun testler 
5. Fonksiyonun gelişmiş bir taslağı, template
6. Ve nihayetinde hazır fonksiyon.  
* Burada testler ve asıl fonksiyon haricindekiler yorum satırı ile işaretlenmelidir.

Aldığı sayıyı ikiyle çarpan bir fonksiyon tasarlayalım:

ADIM 1:
Aldığı ve döndürdüğü veri tipi: sayı alıyor ve yine sayı döndürüyor 

    ;; Sayı -> Sayı

ADIM 2: 
AÇIKLAMA

    ;; verilen sayıyı iki ile çarpar

ADIM 3:
BASİT FONKSİYON YAPISI (stub). Testlerin syntax olarak doğru yazılıp yazılmadığını kontrol etmek için çalıştırılacak. İşlem doğru olmadığı için hata verecek fakat bunun syntax hatası olmadığını gördüğümüzde bu stub yorum satırına alınacak

    (define (ikiyleCarp sayi) 0)

    ;(define (ikiyleCarp sayi) 0) ;stub


ADIM 4: 
Stub'a uygun testlerin yazılması

    (check-expect (ikiyleCarp 3) 6)
    (check-expect (ikiyleCarp 4.2) (* 2 4.2))

ADIM 5: 
GELİŞMİŞ TASLAK (template)

    ;(define (ikiyleCarp sayi) ;template
    ;    (... sayi))


ADIM 6:
ANA FONKSİYON

    (define (ikiyleCarp sayi)
    (* 2 sayi))


ÖRNEK: Kelimenin sonuna ünlem (!) ekleyen bir fonksiyon tasarımı yazınız

    ;; Karakter Dizisi -> Karakter Dizisi
    ;; aldığı kelimenin sonuna "!" ekler
    (check-expect (unlemEkle "gokhan") "gokhan!")
    (check-expect (unlemEkle "Hey") "Hey!")

    ;(define (unlemEkle kDizisi) "") ;stub

    ;(define (unlemEkle kDizisi)   ;template
    ;   (... kDizisi))

    (define (unlemEkle kDizisi)
        (string-append kDizisi "!"))


Temelde tasarımlar aynı sırayı ve yapıyı tarif ediyor. 
* Bir resim alıp onun genişliğinin mi daha büyük yoksa uzunluğunun mu daha büyük olduğunu test eden Image -> Boolean fonksiyonu (06-tall.rkt) gibi aldığı veri tipinden farklı veri tiplerinde dönüt veren fonksiyon örnekleri de var.